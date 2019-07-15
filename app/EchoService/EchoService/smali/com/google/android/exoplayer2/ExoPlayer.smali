.class public interface abstract Lcom/google/android/exoplayer2/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;,
        Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerComponent;,
        Lcom/google/android/exoplayer2/ExoPlayer$EventListener;
    }
.end annotation


# static fields
.field public static final REPEAT_MODE_ALL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPEAT_MODE_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final REPEAT_MODE_ONE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_BUFFERING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_ENDED:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_IDLE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_READY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public varargs abstract blockingSendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
.end method

.method public abstract getPlaybackLooper()Landroid/os/Looper;
.end method

.method public abstract prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
.end method

.method public abstract prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
.end method

.method public varargs abstract sendMessages([Lcom/google/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
.end method
