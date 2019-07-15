.class public final Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# instance fields
.field public final adCounts:[I

.field public final adGroupCount:I

.field public final adGroupTimesUs:[J

.field public adResumePositionUs:J

.field public final adUris:[[Landroid/net/Uri;

.field public final adsLoadedCounts:[I

.field public final adsPlayedCounts:[I

.field public contentDurationUs:J


# direct methods
.method public constructor <init>([J)V
    .locals 2
    .param p1, "adGroupTimesUs"    # [J

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    .line 71
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 72
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsPlayedCounts:[I

    .line 73
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adCounts:[I

    .line 74
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adCounts:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 75
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsLoadedCounts:[I

    .line 78
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    .line 79
    return-void
.end method

.method private constructor <init>([J[I[I[I[[Landroid/net/Uri;JJ)V
    .locals 2
    .param p1, "adGroupTimesUs"    # [J
    .param p2, "adCounts"    # [I
    .param p3, "adsLoadedCounts"    # [I
    .param p4, "adsPlayedCounts"    # [I
    .param p5, "adUris"    # [[Landroid/net/Uri;
    .param p6, "contentDurationUs"    # J
    .param p8, "adResumePositionUs"    # J

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    .line 84
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adCounts:[I

    .line 85
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsLoadedCounts:[I

    .line 86
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsPlayedCounts:[I

    .line 87
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    .line 88
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    .line 89
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    .line 90
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 91
    return-void
.end method


# virtual methods
.method public addAdUri(ILandroid/net/Uri;)V
    .locals 4
    .param p1, "adGroupIndex"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    aget-object v1, v1, p1

    array-length v0, v1

    .line 119
    .local v0, "adIndexInAdGroup":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    aget-object v1, v1, p1

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    aput-object v1, v2, p1

    .line 120
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    aget-object v1, v1, p1

    aput-object p2, v1, v0

    .line 121
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsLoadedCounts:[I

    aget v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p1

    .line 122
    return-void
.end method

.method public copy()Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 11

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    array-length v0, v0

    new-array v5, v0, [[Landroid/net/Uri;

    .line 98
    .local v5, "adUris":[[Landroid/net/Uri;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    array-length v0, v0

    if-ge v10, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    aget-object v0, v0, v10

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adUris:[[Landroid/net/Uri;

    aget-object v1, v1, v10

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    aput-object v0, v5, v10

    .line 98
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 101
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupTimesUs:[J

    iget v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adCounts:[I

    iget v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 102
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsLoadedCounts:[I

    iget v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsPlayedCounts:[I

    iget v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 103
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->contentDurationUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;-><init>([J[I[I[I[[Landroid/net/Uri;JJ)V

    return-object v0
.end method

.method public playedAd(I)V
    .locals 2
    .param p1, "adGroupIndex"    # I

    .prologue
    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsPlayedCounts:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 130
    return-void
.end method

.method public playedAdGroup(I)V
    .locals 2
    .param p1, "adGroupIndex"    # I

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adCounts:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adCounts:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsPlayedCounts:[I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adCounts:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 141
    return-void
.end method

.method public setAdCount(II)V
    .locals 1
    .param p1, "adGroupIndex"    # I
    .param p2, "adCount"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adCounts:[I

    aput p2, v0, p1

    .line 112
    return-void
.end method

.method public setAdResumePositionUs(J)V
    .locals 1
    .param p1, "adResumePositionUs"    # J

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adResumePositionUs:J

    .line 148
    return-void
.end method
