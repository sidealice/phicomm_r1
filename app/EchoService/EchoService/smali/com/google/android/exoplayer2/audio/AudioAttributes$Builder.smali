.class public final Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contentType:I

.field private flags:I

.field private usage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    .line 56
    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    .line 58
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 5

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/audio/AudioAttributes;-><init>(IIILcom/google/android/exoplayer2/audio/AudioAttributes$1;)V

    return-object v0
.end method

.method public setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .locals 0
    .param p1, "contentType"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->contentType:I

    .line 65
    return-object p0
.end method

.method public setFlags(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->flags:I

    .line 73
    return-object p0
.end method

.method public setUsage(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;
    .locals 0
    .param p1, "usage"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->usage:I

    .line 81
    return-object p0
.end method
