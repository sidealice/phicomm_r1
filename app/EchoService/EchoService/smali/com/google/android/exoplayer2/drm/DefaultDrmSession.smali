.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSession",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW:I = 0x3c

.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field final callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

.field private final initData:[B

.field private final initialDrmRequestRetryCount:I

.field private lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

.field private mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mimeType:Ljava/lang/String;

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private openCount:I

.field private final optionalKeyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession",
            "<TT;>.PostRequestHandler;"
        }
    .end annotation
.end field

.field final postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession",
            "<TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field private final provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field private requestHandlerThread:Landroid/os/HandlerThread;

.field private sessionId:[B

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;[BLjava/lang/String;I[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Landroid/os/Looper;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;I)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p4, "initData"    # [B
    .param p5, "mimeType"    # Ljava/lang/String;
    .param p6, "mode"    # I
    .param p7, "offlineLicenseKeySetId"    # [B
    .param p9, "callback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .param p10, "playbackLooper"    # Landroid/os/Looper;
    .param p11, "eventHandler"    # Landroid/os/Handler;
    .param p12, "eventListener"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .param p13, "initialDrmRequestRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager",
            "<TT;>;[B",
            "Ljava/lang/String;",
            "I[B",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    .local p2, "mediaDrm":Lcom/google/android/exoplayer2/drm/ExoMediaDrm;, "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p3, "provisioningManager":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager<TT;>;"
    .local p8, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 125
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    .line 126
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 127
    iput p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    .line 128
    iput-object p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 129
    iput-object p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 130
    iput-object p9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .line 131
    iput p13, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    .line 133
    iput-object p11, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    .line 134
    iput-object p12, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 137
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    invoke-direct {v0, p0, p10}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    .line 138
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrmRequestHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 140
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    .line 142
    if-nez p7, :cond_0

    .line 143
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initData:[B

    .line 144
    iput-object p5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mimeType:Ljava/lang/String;

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initData:[B

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeyResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initialDrmRequestRetryCount:I

    return v0
.end method

.method private doLicense(Z)V
    .locals 6
    .param p1, "allowRetry"    # Z

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    const/4 v4, 0x4

    const/4 v5, 0x2

    .line 293
    iget v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    packed-switch v2, :pswitch_data_0

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 296
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v2, :cond_1

    .line 297
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_0

    .line 298
    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    if-eq v2, v4, :cond_2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->getLicenseDurationRemainingSec()J

    move-result-wide v0

    .line 300
    .local v0, "licenseDurationRemainingSec":J
    iget v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v2, :cond_3

    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 302
    const-string v2, "DefaultDrmSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_0

    .line 305
    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 306
    new-instance v2, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 308
    :cond_4
    iput v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 309
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;

    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$1;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 321
    .end local v0    # "licenseDurationRemainingSec":J
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-nez v2, :cond_5

    .line 322
    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_0

    .line 325
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_0

    .line 333
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->restoreKeys()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    const/4 v2, 0x3

    invoke-direct {p0, v2, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postKeyRequest(IZ)V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLicenseDurationRemainingSec()J
    .locals 6

    .prologue
    .line 354
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    sget-object v1, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    const-wide v2, 0x7fffffffffffffffL

    .line 358
    :goto_0
    return-wide v2

    .line 357
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getLicenseDurationRemainingSec(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;

    move-result-object v0

    .line 358
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0
.end method

.method private isOpen()Z
    .locals 2

    .prologue
    .line 455
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 440
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    new-instance v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 441
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$4;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 450
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 452
    :cond_1
    return-void
.end method

.method private onKeyResponse(Ljava/lang/Object;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 377
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 422
    .end local p1    # "response":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 382
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljava/lang/Exception;

    if-eqz v4, :cond_2

    .line 383
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 388
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_2
    :try_start_0
    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [B

    move-object v3, v0

    .line 389
    .local v3, "responseData":[B
    sget-object v4, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 390
    invoke-static {v3}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->adjustResponseData([B)[B

    move-result-object v3

    .line 392
    :cond_3
    iget v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 393
    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v4, v5, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 394
    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz v4, :cond_0

    .line 395
    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$2;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v3    # "responseData":[B
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "responseData":[B
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v4, v5, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v2

    .line 404
    .local v2, "keySetId":[B
    iget v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mode:I

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    if-eqz v4, :cond_6

    :cond_5
    if-eqz v2, :cond_6

    array-length v4, v2

    if-eqz v4, :cond_6

    .line 407
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 409
    :cond_6
    const/4 v4, 0x4

    iput v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 410
    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz v4, :cond_0

    .line 411
    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->eventHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;

    invoke-direct {v5, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$3;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onKeysError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 432
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onKeysExpired()V
    .locals 2

    .prologue
    .line 425
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 426
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 427
    new-instance v0, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 429
    :cond_0
    return-void
.end method

.method private onProvisionResponse(Ljava/lang/Object;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 272
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    .end local p1    # "response":Ljava/lang/Object;
    :goto_0
    return-void

    .line 277
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 278
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 283
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    check-cast p1, [B

    .end local p1    # "response":Ljava/lang/Object;
    check-cast p1, [B

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->onProvisionError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private openInternal(Z)Z
    .locals 4
    .param p1, "allowProvisioning"    # Z

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    const/4 v1, 0x1

    .line 248
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    :goto_0
    return v1

    .line 254
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->openSession()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 255
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->createMediaCrypto([B)Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    .line 256
    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/media/NotProvisionedException;
    if-eqz p1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    .line 268
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 262
    .restart local v0    # "e":Landroid/media/NotProvisionedException;
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 264
    .end local v0    # "e":Landroid/media/NotProvisionedException;
    :catch_1
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private postKeyRequest(IZ)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "allowRetry"    # Z

    .prologue
    .line 362
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 364
    .local v1, "scope":[B
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initData:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mimeType:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->optionalKeyRequestParameters:Ljava/util/HashMap;

    move v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    move-result-object v7

    .line 366
    .local v7, "request":Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    sget-object v0, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v8, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;

    invoke-interface {v7}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/ClearKeyUtil;->adjustRequestData([B)[B

    move-result-object v0

    .line 368
    invoke-interface {v7}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$DefaultKeyRequest;-><init>([BLjava/lang/String;)V

    .end local v7    # "request":Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .local v8, "request":Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    move-object v7, v8

    .line 370
    .end local v8    # "request":Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    .restart local v7    # "request":Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v7, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->obtainMessage(ILjava/lang/Object;Z)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v7    # "request":Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;
    :goto_1
    return-void

    .line 362
    .end local v1    # "scope":[B
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    goto :goto_0

    .line 371
    .restart local v1    # "scope":[B
    :catch_0
    move-exception v6

    .line 372
    .local v6, "e":Ljava/lang/Exception;
    invoke-direct {p0, v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysError(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private restoreKeys()Z
    .locals 4

    .prologue
    .line 344
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    const/4 v1, 0x1

    .line 350
    :goto_0
    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 350
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    const/4 v1, 0x1

    .line 154
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    if-ne v0, v1, :cond_0

    .line 155
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    if-ne v0, v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_0
.end method

.method public final getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 2

    .prologue
    .line 221
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    return v0
.end method

.method public hasInitData([B)Z
    .locals 1
    .param p1, "initData"    # [B

    .prologue
    .line 187
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->initData:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public hasSessionId([B)Z
    .locals 1
    .param p1, "sessionId"    # [B

    .prologue
    .line 191
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public onMediaDrmEvent(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 460
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    :goto_0
    return-void

    .line 463
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 474
    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 475
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provisioningManager:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;->provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    goto :goto_0

    .line 465
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    goto :goto_0

    .line 471
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onKeysExpired()V

    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onProvisionCompleted()V
    .locals 1

    .prologue
    .line 202
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->doLicense(Z)V

    .line 205
    :cond_0
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 208
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onError(Ljava/lang/Exception;)V

    .line 209
    return-void
.end method

.method public provision()V
    .locals 4

    .prologue
    .line 197
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getProvisionRequest()Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    move-result-object v0

    .line 198
    .local v0, "request":Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->obtainMessage(ILjava/lang/Object;Z)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 199
    return-void
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public release()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 168
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->openCount:I

    if-nez v1, :cond_1

    .line 169
    iput v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->state:I

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 172
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postRequestHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 174
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 175
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaCrypto:Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;

    .line 176
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->lastException:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->closeSession([B)V

    .line 179
    iput-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->sessionId:[B

    .line 181
    :cond_0
    const/4 v0, 0x1

    .line 183
    :cond_1
    return v0
.end method
