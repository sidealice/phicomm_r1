.class public Lorg/xutils/image/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field private final begin:J

.field private byteCount:I

.field private final duration:I

.field private final movie:Landroid/graphics/Movie;

.field private rate:I

.field private volatile running:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Movie;I)V
    .locals 2
    .param p1, "movie"    # Landroid/graphics/Movie;
    .param p2, "byteCount"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    const/16 v0, 0x12c

    iput v0, p0, Lorg/xutils/image/GifDrawable;->rate:I

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xutils/image/GifDrawable;->begin:J

    .line 24
    iput-object p1, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    .line 25
    iput p2, p0, Lorg/xutils/image/GifDrawable;->byteCount:I

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result v0

    iput v0, p0, Lorg/xutils/image/GifDrawable;->duration:I

    .line 27
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    :try_start_0
    iget v2, p0, Lorg/xutils/image/GifDrawable;->duration:I

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/xutils/image/GifDrawable;->begin:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, p0, Lorg/xutils/image/GifDrawable;->duration:I

    rem-int v1, v2, v3

    .line 56
    .local v1, "time":I
    :goto_0
    iget-object v2, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v2, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 57
    iget-object v2, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 58
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "time":I
    :goto_1
    return-void

    .line 55
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getByteCount()I
    .locals 2

    .prologue
    .line 38
    iget v0, p0, Lorg/xutils/image/GifDrawable;->byteCount:I

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/xutils/image/GifDrawable;->byteCount:I

    .line 41
    :cond_0
    iget v0, p0, Lorg/xutils/image/GifDrawable;->byteCount:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lorg/xutils/image/GifDrawable;->duration:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    return v0
.end method

.method public getMovie()Landroid/graphics/Movie;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/xutils/image/GifDrawable;->movie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/xutils/image/GifDrawable;->rate:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/xutils/image/GifDrawable;->running:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/xutils/image/GifDrawable;->duration:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 86
    iget v0, p0, Lorg/xutils/image/GifDrawable;->duration:I

    if-lez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->invalidateSelf()V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lorg/xutils/image/GifDrawable;->rate:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lorg/xutils/image/GifDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 90
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 95
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 109
    return-void
.end method

.method public setRate(I)V
    .locals 0
    .param p1, "rate"    # I

    .prologue
    .line 49
    iput p1, p0, Lorg/xutils/image/GifDrawable;->rate:I

    .line 50
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/image/GifDrawable;->running:Z

    .line 68
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->run()V

    .line 70
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/xutils/image/GifDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, p0}, Lorg/xutils/image/GifDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 77
    :cond_0
    return-void
.end method
