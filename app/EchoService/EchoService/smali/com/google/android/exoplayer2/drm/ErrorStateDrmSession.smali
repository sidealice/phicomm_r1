.class final Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;
.super Ljava/lang/Object;
.source "ErrorStateDrmSession.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSession;


# annotations
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


# instance fields
.field private final error:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V
    .locals 1
    .param p1, "error"    # Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .prologue
    .line 28
    .local p0, "this":Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;, "Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;->error:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 30
    return-void
.end method


# virtual methods
.method public getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;, "Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;->error:Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    return-object v0
.end method

.method public getMediaCrypto()Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;, "Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOfflineLicenseKeySetId()[B
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;, "Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;, "Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 1
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
    .line 49
    .local p0, "this":Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession;, "Lcom/google/android/exoplayer2/drm/ErrorStateDrmSession<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
