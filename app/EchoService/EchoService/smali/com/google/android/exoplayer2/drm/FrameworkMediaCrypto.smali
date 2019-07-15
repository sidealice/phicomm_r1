.class public final Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;
.super Ljava/lang/Object;
.source "FrameworkMediaCrypto.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/ExoMediaCrypto;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final forceAllowInsecureDecoderComponents:Z

.field private final mediaCrypto:Landroid/media/MediaCrypto;


# direct methods
.method public constructor <init>(Landroid/media/MediaCrypto;)V
    .locals 1
    .param p1, "mediaCrypto"    # Landroid/media/MediaCrypto;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;-><init>(Landroid/media/MediaCrypto;Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCrypto;Z)V
    .locals 1
    .param p1, "mediaCrypto"    # Landroid/media/MediaCrypto;
    .param p2, "forceAllowInsecureDecoderComponents"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCrypto;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 48
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->forceAllowInsecureDecoderComponents:Z

    .line 49
    return-void
.end method


# virtual methods
.method public getWrappedMediaCrypto()Landroid/media/MediaCrypto;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->mediaCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method public requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->forceAllowInsecureDecoderComponents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaCrypto;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 61
    invoke-virtual {v0, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
