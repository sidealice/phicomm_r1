.class Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;
.super Landroid/os/HandlerThread;
.source "DummySurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummySurfaceThread"
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x1

.field private static final MSG_RELEASE:I = 0x3

.field private static final MSG_UPDATE_TEXTURE:I = 0x2


# instance fields
.field private context:Landroid/opengl/EGLContext;

.field private display:Landroid/opengl/EGLDisplay;

.field private handler:Landroid/os/Handler;

.field private initError:Ljava/lang/Error;

.field private initException:Ljava/lang/RuntimeException;

.field private pbuffer:Landroid/opengl/EGLSurface;

.field private surface:Lcom/google/android/exoplayer2/video/DummySurface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final textureIdHolder:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 191
    const-string v0, "dummySurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    .line 193
    return-void
.end method

.method private initInternal(Z)V
    .locals 17
    .param p1, "secure"    # Z

    .prologue
    .line 267
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string v4, "eglGetDisplay failed"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 270
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 271
    .local v16, "version":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v16

    invoke-static {v2, v0, v4, v1, v6}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v12

    .line 272
    .local v12, "eglInitialized":Z
    const-string v2, "eglInitialize failed"

    invoke-static {v12, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 274
    const/16 v2, 0x11

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 285
    .local v3, "eglAttributes":[I
    const/4 v2, 0x1

    new-array v5, v2, [Landroid/opengl/EGLConfig;

    .line 286
    .local v5, "configs":[Landroid/opengl/EGLConfig;
    const/4 v2, 0x1

    new-array v8, v2, [I

    .line 287
    .local v8, "numConfigs":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v11

    .line 289
    .local v11, "eglChooseConfigSuccess":Z
    if-eqz v11, :cond_1

    const/4 v2, 0x0

    aget v2, v8, v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v2, v5, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v4, "eglChooseConfig failed"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 292
    const/4 v2, 0x0

    aget-object v10, v5, v2

    .line 294
    .local v10, "config":Landroid/opengl/EGLConfig;
    if-eqz p1, :cond_2

    .line 295
    const/4 v2, 0x5

    new-array v14, v2, [I

    fill-array-data v14, :array_1

    .line 304
    .local v14, "glAttributes":[I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v6, 0x0

    invoke-static {v2, v10, v4, v14, v6}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    const-string v4, "eglCreateContext failed"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 309
    if-eqz p1, :cond_4

    .line 310
    const/4 v2, 0x7

    new-array v15, v2, [I

    fill-array-data v15, :array_2

    .line 321
    .local v15, "pbufferAttributes":[I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x0

    invoke-static {v2, v10, v15, v4}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_5
    const-string v4, "eglCreatePbufferSurface failed"

    invoke-static {v2, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    invoke-static {v2, v4, v6, v7}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v13

    .line 325
    .local v13, "eglMadeCurrent":Z
    const-string v2, "eglMakeCurrent failed"

    invoke-static {v13, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 327
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 328
    new-instance v2, Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    invoke-direct {v2, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 330
    new-instance v2, Lcom/google/android/exoplayer2/video/DummySurface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v4, v1, v6}, Lcom/google/android/exoplayer2/video/DummySurface;-><init>(Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;Landroid/graphics/SurfaceTexture;ZLcom/google/android/exoplayer2/video/DummySurface$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 331
    return-void

    .line 268
    .end local v3    # "eglAttributes":[I
    .end local v5    # "configs":[Landroid/opengl/EGLConfig;
    .end local v8    # "numConfigs":[I
    .end local v10    # "config":Landroid/opengl/EGLConfig;
    .end local v11    # "eglChooseConfigSuccess":Z
    .end local v12    # "eglInitialized":Z
    .end local v13    # "eglMadeCurrent":Z
    .end local v14    # "glAttributes":[I
    .end local v15    # "pbufferAttributes":[I
    .end local v16    # "version":[I
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 289
    .restart local v3    # "eglAttributes":[I
    .restart local v5    # "configs":[Landroid/opengl/EGLConfig;
    .restart local v8    # "numConfigs":[I
    .restart local v11    # "eglChooseConfigSuccess":Z
    .restart local v12    # "eglInitialized":Z
    .restart local v16    # "version":[I
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 300
    .restart local v10    # "config":Landroid/opengl/EGLConfig;
    :cond_2
    const/4 v2, 0x3

    new-array v14, v2, [I

    fill-array-data v14, :array_3

    .restart local v14    # "glAttributes":[I
    goto/16 :goto_2

    .line 306
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 316
    :cond_4
    const/4 v2, 0x5

    new-array v15, v2, [I

    fill-array-data v15, :array_4

    .restart local v15    # "pbufferAttributes":[I
    goto :goto_4

    .line 322
    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    .line 274
    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data

    .line 295
    :array_1
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data

    .line 310
    :array_2
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    .line 300
    :array_3
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    .line 316
    :array_4
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method private releaseInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 337
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->textureIdHolder:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 346
    :cond_2
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    .line 347
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    .line 348
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    .line 349
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 350
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 352
    return-void

    .line 340
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    if-eqz v1, :cond_3

    .line 341
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    if-eqz v1, :cond_4

    .line 344
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 346
    :cond_4
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->pbuffer:Landroid/opengl/EGLSurface;

    .line 347
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->context:Landroid/opengl/EGLContext;

    .line 348
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->display:Landroid/opengl/EGLDisplay;

    .line 349
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    .line 350
    iput-object v3, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 233
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 262
    :goto_0
    return v2

    .line 236
    :pswitch_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initInternal(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 244
    monitor-enter p0

    .line 245
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 236
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v1, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 244
    monitor-enter p0

    .line 245
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 240
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Error;
    :try_start_4
    const-string v1, "DummySurface"

    const-string v3, "Failed to initialize dummy surface"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 244
    monitor-enter p0

    .line 245
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 244
    .end local v0    # "e":Ljava/lang/Error;
    :catchall_3
    move-exception v1

    monitor-enter p0

    .line 245
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 246
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1

    :catchall_4
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    .line 250
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    goto :goto_0

    .line 254
    :pswitch_2
    :try_start_8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->releaseInternal()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    goto :goto_0

    .line 255
    :catch_2
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_9
    const-string v1, "DummySurface"

    const-string v3, "Failed to release dummy surface"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_5
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    throw v1

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init(Z)Lcom/google/android/exoplayer2/video/DummySurface;
    .locals 6
    .param p1, "secure"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->start()V

    .line 197
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "wasInterrupted":Z
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 201
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 203
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 206
    goto :goto_1

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v2, v3

    .line 200
    goto :goto_0

    .line 208
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    if-eqz v1, :cond_2

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    .line 214
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    throw v2

    .line 208
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 215
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;

    if-eqz v2, :cond_4

    .line 216
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;

    throw v2

    .line 218
    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lcom/google/android/exoplayer2/video/DummySurface;

    return-object v2
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 229
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    return-void
.end method
