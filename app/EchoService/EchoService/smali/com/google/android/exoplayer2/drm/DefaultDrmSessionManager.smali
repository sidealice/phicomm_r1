.class public Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionManager;
.implements Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$Mode;,
        Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/drm/DrmSessionManager",
        "<TT;>;",
        "Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final CENC_SCHEME_MIME_TYPE:Ljava/lang/String; = "cenc"

.field public static final INITIAL_DRM_REQUEST_RETRY_COUNT:I = 0x3

.field public static final MODE_DOWNLOAD:I = 0x2

.field public static final MODE_PLAYBACK:I = 0x0

.field public static final MODE_QUERY:I = 0x1

.field public static final MODE_RELEASE:I = 0x3

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

.field private final eventHandler:Landroid/os/Handler;

.field private final eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

.field private final initialDrmRequestRetryCount:I

.field private final mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile mediaDrmHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager",
            "<TT;>.MediaDrmHandler;"
        }
    .end annotation
.end field

.field private mode:I

.field private final multiSession:Z

.field private offlineLicenseKeySetId:[B

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

.field private playbackLooper:Landroid/os/Looper;

.field private final provisioningSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)V
    .locals 9
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p3, "callback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local p2, "mediaDrm":Lcom/google/android/exoplayer2/drm/ExoMediaDrm;, "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;ZI)V

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;Z)V
    .locals 9
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p3, "callback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .param p7, "multiSession"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local p2, "mediaDrm":Lcom/google/android/exoplayer2/drm/ExoMediaDrm;, "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;ZI)V

    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;ZI)V
    .locals 3
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p3, "callback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .param p7, "multiSession"    # Z
    .param p8, "initialDrmRequestRetryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/ExoMediaDrm",
            "<TT;>;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local p2, "mediaDrm":Lcom/google/android/exoplayer2/drm/ExoMediaDrm;, "Lcom/google/android/exoplayer2/drm/ExoMediaDrm<TT;>;"
    .local p4, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 251
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    .line 252
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    .line 253
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    .line 254
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    .line 255
    iput-object p5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    .line 256
    iput-object p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    .line 257
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->multiSession:Z

    .line 258
    iput p8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->initialDrmRequestRetryCount:I

    .line 259
    iput v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    .line 262
    if-eqz p7, :cond_0

    .line 263
    const-string v0, "sessionSharing"

    const-string v1, "enable"

    invoke-interface {p2, v0, v1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->setOnEventListener(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V

    .line 266
    return-void

    :cond_1
    move v0, v1

    .line 250
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    return v0
.end method

.method private static getSchemeData(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 10
    .param p0, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "allowMissingData"    # Z

    .prologue
    const/16 v9, 0x17

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 485
    new-instance v2, Ljava/util/ArrayList;

    iget v8, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 486
    .local v2, "matchingSchemeDatas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v8, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    if-ge v0, v8, :cond_4

    .line 487
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmInitData;->get(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v3

    .line 488
    .local v3, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 489
    invoke-virtual {v8, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Lcom/google/android/exoplayer2/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_0
    move v4, v7

    .line 490
    .local v4, "uuidMatches":Z
    :goto_1
    if-eqz v4, :cond_2

    iget-object v8, v3, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    if-nez v8, :cond_1

    if-eqz p2, :cond_2

    .line 491
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v4    # "uuidMatches":Z
    :cond_3
    move v4, v6

    .line 489
    goto :goto_1

    .line 495
    .end local v3    # "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 496
    const/4 v1, 0x0

    .line 514
    :cond_5
    :goto_2
    return-object v1

    .line 500
    :cond_6
    sget-object v8, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v8, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 501
    const/4 v0, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_a

    .line 502
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 503
    .local v1, "matchingSchemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v1, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    .line 504
    invoke-static {v8}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseVersion([B)I

    move-result v5

    .line 505
    .local v5, "version":I
    :goto_4
    sget v8, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v8, v9, :cond_7

    if-eqz v5, :cond_5

    .line 507
    :cond_7
    sget v8, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v8, v9, :cond_8

    if-eq v5, v7, :cond_5

    .line 501
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 504
    .end local v5    # "version":I
    :cond_9
    const/4 v5, -0x1

    goto :goto_4

    .line 514
    .end local v1    # "matchingSchemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_a
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-object v1, v6

    goto :goto_2
.end method

.method private static getSchemeInitData(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;Ljava/util/UUID;)[B
    .locals 4
    .param p0, "data"    # Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 518
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    .line 519
    .local v1, "schemeInitData":[B
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 521
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 522
    .local v0, "psshData":[B
    if-nez v0, :cond_1

    .line 528
    .end local v0    # "psshData":[B
    :cond_0
    :goto_0
    return-object v1

    .line 525
    .restart local v0    # "psshData":[B
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private static getSchemeMimeType(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;Ljava/util/UUID;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 533
    .local v0, "schemeMimeType":Ljava/lang/String;
    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    sget-object v1, Lcom/google/android/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "video/mp4"

    .line 534
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/mp4"

    .line 535
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    :cond_0
    const-string v0, "cenc"

    .line 539
    :cond_1
    return-object v0
.end method

.method public static newFrameworkInstance(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 9
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "callback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .param p3, "eventHandler"    # Landroid/os/Handler;
    .param p4, "eventListener"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->newInstance(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;ZI)V

    return-object v0
.end method

.method public static newPlayReadyInstance(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 2
    .param p0, "callback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .param p1, "customData"    # Ljava/lang/String;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "eventListener"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    .local v0, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "PRCustomData"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :goto_0
    sget-object v1, Lcom/google/android/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-static {v1, p0, v0, p2, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object v1

    return-object v1

    .line 169
    .end local v0    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public static newWidevineInstance(Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 1
    .param p0, "callback"    # Lcom/google/android/exoplayer2/drm/MediaDrmCallback;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "eventListener"    # Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/MediaDrmCallback;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager",
            "<",
            "Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "optionalKeyRequestParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/google/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquireSession(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 19
    .param p1, "playbackLooper"    # Landroid/os/Looper;
    .param p2, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ")",
            "Lcom/google/android/exoplayer2/drm/DrmSession",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_3

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->playbackLooper:Landroid/os/Looper;

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    if-nez v3, :cond_1

    .line 375
    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    .line 379
    :cond_1
    const/4 v6, 0x0

    .line 380
    .local v6, "initData":[B
    const/4 v7, 0x0

    .line 381
    .local v7, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    if-nez v3, :cond_5

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getSchemeData(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v16

    .line 383
    .local v16, "data":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    if-nez v16, :cond_4

    .line 384
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media does not support uuid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 386
    .local v17, "error":Ljava/lang/IllegalStateException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    if-eqz v3, :cond_2

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$1;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Ljava/lang/IllegalStateException;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;

    new-instance v3, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;-><init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    .line 422
    .end local v16    # "data":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    .end local v17    # "error":Ljava/lang/IllegalStateException;
    :goto_1
    return-object v2

    .line 371
    .end local v6    # "initData":[B
    .end local v7    # "mimeType":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 396
    .restart local v6    # "initData":[B
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v16    # "data":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getSchemeInitData(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;Ljava/util/UUID;)[B

    move-result-object v6

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getSchemeMimeType(Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v7

    .line 401
    .end local v16    # "data":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->multiSession:Z

    if-nez v3, :cond_9

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    .line 414
    .local v2, "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :cond_6
    :goto_2
    if-nez v2, :cond_7

    .line 416
    new-instance v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .end local v2    # "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->optionalKeyRequestParameters:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->eventHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->eventListener:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->initialDrmRequestRetryCount:I

    move-object/from16 v5, p0

    move-object/from16 v12, p1

    invoke-direct/range {v2 .. v15}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm;Lcom/google/android/exoplayer2/drm/DefaultDrmSession$ProvisioningManager;[BLjava/lang/String;I[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/MediaDrmCallback;Landroid/os/Looper;Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;I)V

    .line 419
    .restart local v2    # "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_7
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->acquire()V

    goto :goto_1

    .line 402
    .end local v2    # "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    move-object v2, v3

    goto :goto_2

    .line 405
    :cond_9
    const/4 v2, 0x0

    .line 406
    .restart local v2    # "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 407
    .local v18, "existingSession":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->hasInitData([B)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 408
    move-object/from16 v2, v18

    .line 409
    goto :goto_2
.end method

.method public canAcquireSession(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 6
    .param p1, "drmInitData"    # Lcom/google/android/exoplayer2/drm/DrmInitData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 351
    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->uuid:Ljava/util/UUID;

    invoke-static {p1, v4, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->getSchemeData(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v0

    .line 352
    .local v0, "schemeData":Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;
    if-nez v0, :cond_1

    move v2, v3

    .line 366
    :cond_0
    :goto_0
    return v2

    .line 356
    :cond_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 357
    .local v1, "schemeType":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "cenc"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 360
    const-string v4, "cbc1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "cbcs"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "cens"

    .line 361
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    :cond_2
    sget v4, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public final getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 301
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public final getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 277
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onProvisionCompleted()V
    .locals 3

    .prologue
    .line 457
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 458
    .local v0, "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionCompleted()V

    goto :goto_0

    .line 460
    .end local v0    # "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 461
    return-void
.end method

.method public onProvisionError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Exception;

    .prologue
    .line 465
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 466
    .local v0, "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->onProvisionError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 468
    .end local v0    # "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 469
    return-void
.end method

.method public provisionRequired(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSession",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local p1, "session":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 451
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provision()V

    .line 453
    :cond_0
    return-void
.end method

.method public releaseSession(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmSession",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    .local p1, "session":Lcom/google/android/exoplayer2/drm/DrmSession;, "Lcom/google/android/exoplayer2/drm/DrmSession<TT;>;"
    const/4 v3, 0x1

    .line 427
    instance-of v1, p1, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;

    if-eqz v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 432
    check-cast v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 433
    .local v0, "drmSession":Lcom/google/android/exoplayer2/drm/DefaultDrmSession;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>;"
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->release()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 435
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 438
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->provision()V

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->provisioningSessions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMode(I[B)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "offlineLicenseKeySetId"    # [B

    .prologue
    .line 339
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->sessions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 340
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 341
    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mode:I

    .line 344
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->offlineLicenseKeySetId:[B

    .line 345
    return-void
.end method

.method public final setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 313
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 314
    return-void
.end method

.method public final setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrm:Lcom/google/android/exoplayer2/drm/ExoMediaDrm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/ExoMediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method
