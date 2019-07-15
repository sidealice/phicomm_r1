.class public final Lcom/google/android/exoplayer2/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V
    .locals 1
    .param p1, "trackGroups"    # [Lcom/google/android/exoplayer2/source/TrackGroup;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 46
    array-length v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 88
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 90
    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 91
    .local v0, "other":Lcom/google/android/exoplayer2/source/TrackGroupArray;
    iget v3, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public get(I)Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    .line 79
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->hashCode:I

    return v0
.end method

.method public indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I
    .locals 2
    .param p1, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->trackGroups:[Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 71
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 66
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
