.class public final Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodId"
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final periodIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(III)V

    sput-object v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->UNSET:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "periodIndex"    # I

    .prologue
    const/4 v0, -0x1

    .line 94
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(III)V

    .line 95
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "periodIndex"    # I
    .param p2, "adGroupIndex"    # I
    .param p3, "adIndexInAdGroup"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    .line 107
    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 108
    iput p3, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 109
    return-void
.end method


# virtual methods
.method public copyWithPeriodIndex(I)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 3
    .param p1, "newPeriodIndex"    # I

    .prologue
    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-ne v0, p1, :cond_0

    .end local p0    # "this":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(III)V

    move-object p0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    if-ne p0, p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 131
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 132
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 135
    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 136
    .local v0, "periodId":Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    iget v3, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 142
    const/16 v0, 0x11

    .line 143
    .local v0, "result":I
    iget v1, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    add-int/lit16 v0, v1, 0x20f

    .line 144
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    add-int v0, v1, v2

    .line 145
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    add-int v0, v1, v2

    .line 146
    return v0
.end method

.method public isAd()Z
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
