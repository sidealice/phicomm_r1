.class final Lcom/google/android/exoplayer2/util/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Clock;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public elapsedRealtime()J
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .param p3, "delayMs"    # J

    .prologue
    .line 37
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    return-void
.end method

.method public sleep(J)V
    .locals 1
    .param p1, "sleepTimeMs"    # J

    .prologue
    .line 32
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 33
    return-void
.end method
