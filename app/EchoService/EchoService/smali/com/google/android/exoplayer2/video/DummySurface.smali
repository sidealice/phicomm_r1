.class public final Lcom/google/android/exoplayer2/video/DummySurface;
.super Landroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    }
.end annotation


# static fields
.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field private static final TAG:Ljava/lang/String; = "DummySurface"

.field private static secureSupported:Z

.field private static secureSupportedInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0
    .param p1, "thread"    # Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    .param p2, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p3, "secure"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 121
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    .line 122
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/video/DummySurface;->secure:Z

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    .param p2, "x1"    # Landroid/graphics/SurfaceTexture;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/google/android/exoplayer2/video/DummySurface$1;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static assertApiLevel17OrHigher()V
    .locals 2

    .prologue
    .line 141
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    return-void
.end method

.method private static enableSecureDummySurfaceV24(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/16 v5, 0x1a

    const/4 v2, 0x0

    .line 153
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v3, v5, :cond_1

    const-string v3, "samsung"

    sget-object v4, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v2

    .line 158
    :cond_1
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-ge v3, v5, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.vr.high_performance"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    :cond_2
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 164
    .local v0, "display":Landroid/opengl/EGLDisplay;
    const/16 v3, 0x3055

    invoke-static {v0, v3}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "eglExtensions":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "EGL_EXT_protected_content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 93
    const-class v1, Lcom/google/android/exoplayer2/video/DummySurface;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/google/android/exoplayer2/video/DummySurface;->secureSupportedInitialized:Z

    if-nez v2, :cond_0

    .line 94
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->enableSecureDummySurfaceV24(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    sput-boolean v0, Lcom/google/android/exoplayer2/video/DummySurface;->secureSupported:Z

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/exoplayer2/video/DummySurface;->secureSupportedInitialized:Z

    .line 97
    :cond_0
    sget-boolean v0, Lcom/google/android/exoplayer2/video/DummySurface;->secureSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static newInstanceV17(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/video/DummySurface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secure"    # Z

    .prologue
    .line 113
    invoke-static {}, Lcom/google/android/exoplayer2/video/DummySurface;->assertApiLevel17OrHigher()V

    .line 114
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/DummySurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 115
    new-instance v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;-><init>()V

    .line 116
    .local v0, "thread":Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->init(Z)Lcom/google/android/exoplayer2/video/DummySurface;

    move-result-object v1

    return-object v1

    .line 114
    .end local v0    # "thread":Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 132
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface;->thread:Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->release()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/DummySurface;->threadReleased:Z

    .line 137
    :cond_0
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
