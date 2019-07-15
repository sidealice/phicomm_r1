.class public final Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ac3SyncFrameInfo"
.end annotation


# static fields
.field public static final STREAM_TYPE_TYPE0:I = 0x0

.field public static final STREAM_TYPE_TYPE1:I = 0x1

.field public static final STREAM_TYPE_TYPE2:I = 0x2

.field public static final STREAM_TYPE_UNDEFINED:I = -0x1


# instance fields
.field public final channelCount:I

.field public final frameSize:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleCount:I

.field public final sampleRate:I

.field public final streamType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "streamType"    # I
    .param p3, "channelCount"    # I
    .param p4, "sampleRate"    # I
    .param p5, "frameSize"    # I
    .param p6, "sampleCount"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->mimeType:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->streamType:I

    .line 84
    iput p3, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->channelCount:I

    .line 85
    iput p4, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleRate:I

    .line 86
    iput p5, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->frameSize:I

    .line 87
    iput p6, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;->sampleCount:I

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/google/android/exoplayer2/audio/Ac3Util$1;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/Ac3Util$Ac3SyncFrameInfo;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method
