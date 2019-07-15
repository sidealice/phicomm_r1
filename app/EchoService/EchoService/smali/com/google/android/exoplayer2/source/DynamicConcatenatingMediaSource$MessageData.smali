.class final Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;
.super Ljava/lang/Object;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CustomType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final customData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCustomType;"
        }
    .end annotation
.end field

.field public final index:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "index"    # I
    .param p3, "actionOnCompletion"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITCustomType;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 595
    .local p0, "this":Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;, "Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData<TCustomType;>;"
    .local p2, "customData":Ljava/lang/Object;, "TCustomType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput p1, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->index:I

    .line 597
    if-eqz p3, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    invoke-direct {v0, p3}, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->actionOnCompletion:Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$EventDispatcher;

    .line 599
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/DynamicConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    .line 600
    return-void

    .line 597
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
