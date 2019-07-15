.class public Lcom/phicomm/speaker/player/PlayerBinderWrapper;
.super Ljava/lang/Object;
.source "PlayerBinderWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/phicomm/speaker/player/IPlayer$Stub;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/phicomm/speaker/player/IPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Lcom/phicomm/speaker/player/model/AbsPlayer;

.field private mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/phicomm/speaker/player/model/AbsPlayer;)V
    .locals 1
    .param p1, "mPlayer"    # Lcom/phicomm/speaker/player/model/AbsPlayer;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 52
    new-instance v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper$2;-><init>(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mBinder:Lcom/phicomm/speaker/player/IPlayer$Stub;

    .line 309
    new-instance v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper$3;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper$3;-><init>(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    .line 34
    iput-object p1, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mPlayer:Lcom/phicomm/speaker/player/model/AbsPlayer;

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mPlayerListener:Lcom/phicomm/speaker/player/interfaces/PlayerListener;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/player/model/AbsPlayer;->addListener(Lcom/phicomm/speaker/player/interfaces/PlayerListener;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)Lcom/phicomm/speaker/player/model/AbsPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mPlayer:Lcom/phicomm/speaker/player/model/AbsPlayer;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerBinderWrapper;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/player/PlayerBinderWrapper;ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerBinderWrapper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->notifyOnMediaState(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/player/PlayerBinderWrapper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/phicomm/speaker/player/PlayerBinderWrapper;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->notifyReqNewPage(I)V

    return-void
.end method

.method private notifyOnMediaState(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "playPositionInfo"    # Lcom/phicomm/speaker/player/model/PlayPositionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v3, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 331
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 334
    :try_start_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/phicomm/speaker/player/IPlayerCallback;

    invoke-interface {v3, p1, p2}, Lcom/phicomm/speaker/player/IPlayerCallback;->onMediaState(ILcom/phicomm/speaker/player/model/PlayPositionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 339
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 340
    return-void
.end method

.method private notifyReqNewPage(I)V
    .locals 4
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v3, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 344
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 347
    :try_start_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/phicomm/speaker/player/IPlayerCallback;

    invoke-interface {v3, p1}, Lcom/phicomm/speaker/player/IPlayerCallback;->onReqNewPage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 352
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 353
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/player/PlayerBinderWrapper$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/player/PlayerBinderWrapper$1;-><init>(Lcom/phicomm/speaker/player/PlayerBinderWrapper;)V

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/EchoExecutor;->execute(Ljava/lang/Runnable;)V

    .line 49
    invoke-static {}, Lcom/phicomm/speaker/player/EchoExecutor;->getInstance()Lcom/phicomm/speaker/player/EchoExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/EchoExecutor;->shutdown()V

    .line 50
    return-void
.end method

.method public getBinder()Lcom/phicomm/speaker/player/IPlayer$Stub;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/player/PlayerBinderWrapper;->mBinder:Lcom/phicomm/speaker/player/IPlayer$Stub;

    return-object v0
.end method
