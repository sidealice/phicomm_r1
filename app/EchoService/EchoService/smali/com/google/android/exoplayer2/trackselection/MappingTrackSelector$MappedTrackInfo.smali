.class public final Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation


# static fields
.field public static final RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS:I = 0x2

.field public static final RENDERER_SUPPORT_NO_TRACKS:I = 0x0

.field public static final RENDERER_SUPPORT_PLAYABLE_TRACKS:I = 0x3

.field public static final RENDERER_SUPPORT_UNSUPPORTED_TRACKS:I = 0x1


# instance fields
.field private final formatSupport:[[[I

.field public final length:I

.field private final mixedMimeTypeAdaptiveSupport:[I

.field private final rendererTrackTypes:[I

.field private final trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final unassociatedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# direct methods
.method constructor <init>([I[Lcom/google/android/exoplayer2/source/TrackGroupArray;[I[[[ILcom/google/android/exoplayer2/source/TrackGroupArray;)V
    .locals 1
    .param p1, "rendererTrackTypes"    # [I
    .param p2, "trackGroups"    # [Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "mixedMimeTypeAdaptiveSupport"    # [I
    .param p4, "formatSupport"    # [[[I
    .param p5, "unassociatedTrackGroups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 127
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 128
    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    .line 129
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->mixedMimeTypeAdaptiveSupport:[I

    .line 130
    iput-object p5, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unassociatedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 131
    array-length v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    .line 132
    return-void
.end method


# virtual methods
.method public getAdaptiveSupport(IIZ)I
    .locals 7
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "includeCapabilitiesExceededTracks"    # Z

    .prologue
    .line 235
    iget-object v6, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v6, v6, p1

    invoke-virtual {v6, p2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v6

    iget v2, v6, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    .line 237
    .local v2, "trackCount":I
    new-array v5, v2, [I

    .line 238
    .local v5, "trackIndices":[I
    const/4 v3, 0x0

    .line 239
    .local v3, "trackIndexCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v4, v3

    .end local v3    # "trackIndexCount":I
    .local v4, "trackIndexCount":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 240
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackFormatSupport(III)I

    move-result v0

    .line 241
    .local v0, "fixedSupport":I
    const/4 v6, 0x4

    if-eq v0, v6, :cond_0

    if-eqz p3, :cond_2

    const/4 v6, 0x3

    if-ne v0, v6, :cond_2

    .line 244
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "trackIndexCount":I
    .restart local v3    # "trackIndexCount":I
    aput v1, v5, v4

    .line 239
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "trackIndexCount":I
    .restart local v4    # "trackIndexCount":I
    goto :goto_0

    .line 247
    .end local v0    # "fixedSupport":I
    :cond_1
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 248
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(II[I)I

    move-result v6

    return v6

    .restart local v0    # "fixedSupport":I
    :cond_2
    move v3, v4

    .end local v4    # "trackIndexCount":I
    .restart local v3    # "trackIndexCount":I
    goto :goto_1
.end method

.method public getAdaptiveSupport(II[I)I
    .locals 9
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndices"    # [I

    .prologue
    .line 262
    const/4 v2, 0x0

    .line 263
    .local v2, "handledTrackCount":I
    const/16 v0, 0x10

    .line 264
    .local v0, "adaptiveSupport":I
    const/4 v5, 0x0

    .line 265
    .local v5, "multipleMimeTypes":Z
    const/4 v1, 0x0

    .line 266
    .local v1, "firstSampleMimeType":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, p3

    if-ge v4, v8, :cond_2

    .line 267
    aget v7, p3, v4

    .line 268
    .local v7, "trackIndex":I
    iget-object v8, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v8, v8, p1

    invoke-virtual {v8, p2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v8

    iget-object v6, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 270
    .local v6, "sampleMimeType":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "handledTrackCount":I
    .local v3, "handledTrackCount":I
    if-nez v2, :cond_0

    .line 271
    move-object v1, v6

    .line 275
    :goto_1
    iget-object v8, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object v8, v8, p1

    aget-object v8, v8, p2

    aget v8, v8, v4

    and-int/lit8 v8, v8, 0x18

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 266
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    .end local v3    # "handledTrackCount":I
    .restart local v2    # "handledTrackCount":I
    goto :goto_0

    .line 273
    .end local v2    # "handledTrackCount":I
    .restart local v3    # "handledTrackCount":I
    :cond_0
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_2
    or-int/2addr v5, v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 278
    .end local v3    # "handledTrackCount":I
    .end local v6    # "sampleMimeType":Ljava/lang/String;
    .end local v7    # "trackIndex":I
    .restart local v2    # "handledTrackCount":I
    :cond_2
    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->mixedMimeTypeAdaptiveSupport:[I

    aget v8, v8, p1

    .line 279
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v0    # "adaptiveSupport":I
    :cond_3
    return v0
.end method

.method public getRendererSupport(I)I
    .locals 6
    .param p1, "rendererIndex"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "bestRendererSupport":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object v3, v5, p1

    .line 155
    .local v3, "rendererFormatSupport":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 156
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v5, v3, v1

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 158
    aget-object v5, v3, v1

    aget v5, v5, v2

    and-int/lit8 v5, v5, 0x7

    packed-switch v5, :pswitch_data_0

    .line 165
    const/4 v4, 0x1

    .line 168
    .local v4, "trackRendererSupport":I
    :goto_2
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    .end local v4    # "trackRendererSupport":I
    :pswitch_0
    const/4 v5, 0x3

    .line 171
    .end local v2    # "j":I
    :goto_3
    return v5

    .line 162
    .restart local v2    # "j":I
    :pswitch_1
    const/4 v4, 0x2

    .line 163
    .restart local v4    # "trackRendererSupport":I
    goto :goto_2

    .line 155
    .end local v4    # "trackRendererSupport":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "j":I
    :cond_1
    move v5, v0

    .line 171
    goto :goto_3

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTrackFormatSupport(III)I
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->formatSupport:[[[I

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    aget v0, v0, p3

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1
    .param p1, "rendererIndex"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroupArray;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTrackTypeRendererSupport(I)I
    .locals 3
    .param p1, "trackType"    # I

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "bestRendererSupport":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->length:I

    if-ge v1, v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 188
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererSupport(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 186
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    return v0
.end method

.method public getUnassociatedTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->unassociatedTrackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method
