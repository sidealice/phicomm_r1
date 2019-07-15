.class final Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
.super Ljava/lang/Object;
.source "TtmlRegion.java"


# instance fields
.field public final id:Ljava/lang/String;

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final position:F

.field public final width:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/high16 v4, -0x80000000

    const/4 v2, 0x1

    .line 33
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIF)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFIIF)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "position"    # F
    .param p3, "line"    # F
    .param p4, "lineType"    # I
    .param p5, "lineAnchor"    # I
    .param p6, "width"    # F

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    .line 39
    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->position:F

    .line 40
    iput p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->line:F

    .line 41
    iput p4, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineType:I

    .line 42
    iput p5, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->lineAnchor:I

    .line 43
    iput p6, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->width:F

    .line 44
    return-void
.end method
