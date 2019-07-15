.class public Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;
.super Ljava/lang/Object;
.source "JmdnsWrapper.java"


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

.field private static final AIR_TUNES_SERVICE_TYPE:Ljava/lang/String; = "_raop._tcp.local."

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private isOn:Z

.field private jmDNSInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/JmDNS;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHardwareAddressString:Ljava/lang/String;

.field private mHostName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-class v0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->LOG:Ljava/util/logging/Logger;

    .line 40
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

    sput-object v0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->AIRTUNES_SERVICE_PROPERTIES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->isOn:Z

    .line 61
    const-string v0, "PhicommAirPlay"

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mHostName:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mHostName:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/player/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mHardwareAddressString:Ljava/lang/String;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->jmDNSInstances:Ljava/util/List;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->isOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->isOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->jmDNSInstances:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mHostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mHardwareAddressString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->AIRTUNES_SERVICE_PROPERTIES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public registerService(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$1;-><init>(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method public setHardwareAddressString(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHardwareAddressString"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mHardwareAddressString:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHostName"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mHostName:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/airplay/JmdnsWrapper$2;-><init>(Lcom/phicomm/speaker/player/airplay/JmdnsWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method
