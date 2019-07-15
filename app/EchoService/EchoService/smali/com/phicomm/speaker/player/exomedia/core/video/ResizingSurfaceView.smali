.class public Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;
.super Landroid/view/SurfaceView;
.source "ResizingSurfaceView.java"

# interfaces
.implements Lcom/phicomm/speaker/player/exomedia/core/video/ClearableSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;,
        Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;,
        Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;,
        Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;
    }
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final GL_CLEAR_CONFIG_ATTRIBUTES:[I

.field private static final GL_CLEAR_CONTEXT_ATTRIBUTES:[I

.field protected static final MAX_DEGREES:I = 0x168

.field private static final TAG:Ljava/lang/String; = "ResizingSurfaceView"


# instance fields
.field protected attachedListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;

.field protected globalLayoutMatrixListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

.field protected final globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected lastNotifiedSize:Landroid/graphics/Point;

.field protected matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

.field protected measureBasedOnAspectRatio:Z

.field protected onSizeChangeListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;

.field protected requestedConfigurationRotation:I

.field protected requestedUserRotation:I

.field protected videoSize:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->GL_CLEAR_CONFIG_ATTRIBUTES:[I

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->GL_CLEAR_CONTEXT_ATTRIBUTES:[I

    return-void

    .line 64
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data

    .line 81
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->lastNotifiedSize:Landroid/graphics/Point;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    .line 98
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    .line 101
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    invoke-direct {v0, p0, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->attachedListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    .line 103
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-direct {v0, p0, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedUserRotation:I

    .line 108
    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedConfigurationRotation:I

    .line 112
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->measureBasedOnAspectRatio:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->lastNotifiedSize:Landroid/graphics/Point;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    .line 98
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    .line 101
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    invoke-direct {v0, p0, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->attachedListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    .line 103
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-direct {v0, p0, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedUserRotation:I

    .line 108
    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedConfigurationRotation:I

    .line 112
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->measureBasedOnAspectRatio:Z

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->lastNotifiedSize:Landroid/graphics/Point;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    .line 98
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    .line 101
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    invoke-direct {v0, p0, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->attachedListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    .line 103
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-direct {v0, p0, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedUserRotation:I

    .line 108
    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedConfigurationRotation:I

    .line 112
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->measureBasedOnAspectRatio:Z

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->lastNotifiedSize:Landroid/graphics/Point;

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    .line 98
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    .line 101
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    invoke-direct {v0, p0, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->attachedListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    .line 103
    new-instance v0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-direct {v0, p0, v3}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;-><init>(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 107
    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedUserRotation:I

    .line 108
    iput v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedConfigurationRotation:I

    .line 112
    iput-boolean v2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->measureBasedOnAspectRatio:Z

    .line 128
    return-void
.end method


# virtual methods
.method public clearSurface()V
    .locals 10

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 222
    .local v0, "gl10":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 223
    .local v1, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 225
    const/4 v2, 0x1

    new-array v3, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 226
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->GL_CLEAR_CONFIG_ATTRIBUTES:[I

    array-length v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 227
    const/4 v2, 0x0

    aget-object v2, v3, v2

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v5, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->GL_CLEAR_CONTEXT_ATTRIBUTES:[I

    invoke-interface {v0, v1, v2, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    .line 228
    .local v6, "context":Ljavax/microedition/khronos/egl/EGLContext;
    const/4 v2, 0x0

    aget-object v2, v3, v2

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v9, 0x3038

    aput v9, v4, v5

    invoke-interface {v0, v1, v2, p0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v8

    .line 230
    .local v8, "eglSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-interface {v0, v1, v8, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 231
    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 232
    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 233
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 234
    invoke-interface {v0, v1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 236
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v0    # "gl10":Ljavax/microedition/khronos/egl/EGL10;
    .end local v1    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v6    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    .end local v8    # "eglSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v7

    .line 238
    .local v7, "e":Ljava/lang/Exception;
    const-string v2, "ResizingSurfaceView"

    const-string v4, "Error clearing surface"

    invoke-static {v2, v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getScaleType()Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->getCurrentScaleType()Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    move-result-object v0

    return-object v0
.end method

.method protected notifyOnSizeChangeListener(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->lastNotifiedSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->lastNotifiedSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->lastNotifiedSize:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 345
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->lastNotifiedSize:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 347
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->updateMatrixOnLayout()V

    .line 349
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->onSizeChangeListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->onSizeChangeListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;->onVideoSurfaceSizeChange(II)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->updateMatrixOnLayout()V

    .line 201
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 132
    iget-boolean v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->measureBasedOnAspectRatio:Z

    if-nez v6, :cond_0

    .line 133
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 134
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->notifyOnSizeChangeListener(II)V

    .line 196
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-static {v6, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->getDefaultSize(II)I

    move-result v3

    .line 139
    .local v3, "width":I
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->getDefaultSize(II)I

    move-result v0

    .line 141
    .local v0, "height":I
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-gtz v6, :cond_2

    .line 142
    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->setMeasuredDimension(II)V

    .line 143
    invoke-virtual {p0, v3, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->notifyOnSizeChangeListener(II)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 148
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 149
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 150
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 152
    .local v2, "heightSpecSize":I
    if-ne v4, v7, :cond_5

    if-ne v1, v7, :cond_5

    .line 153
    move v3, v5

    .line 154
    move v0, v2

    .line 157
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v3

    if-ge v6, v7, :cond_4

    .line 158
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int v3, v6, v7

    .line 194
    :cond_3
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->setMeasuredDimension(II)V

    .line 195
    invoke-virtual {p0, v3, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->notifyOnSizeChangeListener(II)V

    goto :goto_0

    .line 159
    :cond_4
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v3

    if-le v6, v7, :cond_3

    .line 160
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int v0, v6, v7

    goto :goto_1

    .line 162
    :cond_5
    if-ne v4, v7, :cond_6

    .line 164
    move v3, v5

    .line 165
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int v0, v6, v7

    .line 166
    if-ne v1, v8, :cond_3

    if-le v0, v2, :cond_3

    .line 168
    move v0, v2

    goto :goto_1

    .line 170
    :cond_6
    if-ne v1, v7, :cond_7

    .line 172
    move v0, v2

    .line 173
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int v3, v6, v7

    .line 174
    if-ne v4, v8, :cond_3

    if-le v3, v5, :cond_3

    .line 176
    move v3, v5

    goto :goto_1

    .line 180
    :cond_7
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 181
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 182
    if-ne v1, v8, :cond_8

    if-le v0, v2, :cond_8

    .line 184
    move v0, v2

    .line 185
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int v3, v6, v7

    .line 187
    :cond_8
    if-ne v4, v8, :cond_3

    if-le v3, v5, :cond_3

    .line 189
    move v3, v5

    .line 190
    iget-object v6, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int v0, v6, v7

    goto :goto_1
.end method

.method public setMeasureBasedOnAspectRatioEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->measureBasedOnAspectRatio:Z

    .line 287
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestLayout()V

    .line 288
    return-void
.end method

.method public setOnSizeChangeListener(Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->onSizeChangeListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$OnSizeChangeListener;

    .line 211
    return-void
.end method

.method public setScaleType(Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0, p0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->scale(Landroid/view/View;Lcom/phicomm/speaker/player/exomedia/core/video/scale/ScaleType;)Z

    .line 267
    return-void
.end method

.method public setVideoRotation(II)V
    .locals 2
    .param p1, "userRotation"    # I
    .param p2, "configurationRotation"    # I

    .prologue
    .line 308
    iput p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedUserRotation:I

    .line 309
    iput p2, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedConfigurationRotation:I

    .line 311
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    add-int v1, p1, p2

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, p0, v1}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->rotate(Landroid/view/View;I)V

    .line 312
    return-void
.end method

.method public setVideoRotation(IZ)V
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 297
    if-eqz p2, :cond_0

    move v0, p1

    :goto_0
    if-nez p2, :cond_1

    .end local p1    # "rotation":I
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->setVideoRotation(II)V

    .line 298
    return-void

    .line 297
    .restart local p1    # "rotation":I
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedUserRotation:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->requestedConfigurationRotation:I

    goto :goto_1
.end method

.method protected updateMatrixOnLayout()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 323
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->attachedListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$AttachedListener;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 330
    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->globalLayoutMatrixListener:Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView$GlobalLayoutMatrixListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected updateVideoSize(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->matrixManager:Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/player/exomedia/core/video/scale/MatrixManager;->setIntrinsicVideoSize(II)V

    .line 252
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->updateMatrixOnLayout()V

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/player/exomedia/core/video/ResizingSurfaceView;->videoSize:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 257
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
