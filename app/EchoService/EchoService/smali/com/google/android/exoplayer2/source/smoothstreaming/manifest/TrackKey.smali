.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
.super Ljava/lang/Object;
.source "TrackKey.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final streamElementIndex:I

.field public final trackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "streamElementIndex"    # I
    .param p2, "trackIndex"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    .line 32
    iput p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    .line 33
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;)I
    .locals 3
    .param p1, "o"    # Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    sub-int v0, v1, v2

    .line 70
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 71
    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    iget v2, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    sub-int v0, v1, v2

    .line 73
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->compareTo(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->streamElementIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/TrackKey;->trackIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
