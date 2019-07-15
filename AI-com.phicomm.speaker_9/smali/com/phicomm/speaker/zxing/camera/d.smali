.class public final Lcom/phicomm/speaker/zxing/camera/d;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static e:F = 0.625f

.field private static final f:Ljava/lang/String; = "d"


# instance fields
.field private final g:Landroid/content/Context;

.field private final h:Lcom/phicomm/speaker/zxing/camera/b;

.field private i:Lcom/phicomm/speaker/zxing/camera/open/a;

.field private j:Lcom/phicomm/speaker/zxing/camera/a;

.field private k:Landroid/graphics/Rect;

.field private l:Landroid/graphics/Rect;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private final r:Lcom/phicomm/speaker/zxing/camera/e;

.field private s:Lcom/phicomm/speaker/zxing/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Lcom/phicomm/speaker/zxing/camera/d;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/phicomm/speaker/zxing/camera/d;->a:I

    .line 48
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/zxing/camera/d;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/phicomm/speaker/zxing/camera/d;->b:I

    .line 49
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43700000    # 240.0f

    invoke-static {v0, v1}, Lcom/phicomm/speaker/zxing/camera/d;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/phicomm/speaker/zxing/camera/d;->c:I

    .line 50
    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/zxing/camera/d;->a(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/phicomm/speaker/zxing/camera/d;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/zxing/ViewfinderView;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->o:I

    .line 98
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/camera/d;->g:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    const/high16 p2, 0x3f200000    # 0.625f

    .line 100
    sput p2, Lcom/phicomm/speaker/zxing/camera/d;->e:F

    .line 101
    new-instance p2, Lcom/phicomm/speaker/zxing/camera/b;

    invoke-direct {p2, p1}, Lcom/phicomm/speaker/zxing/camera/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    .line 102
    new-instance p1, Lcom/phicomm/speaker/zxing/camera/e;

    iget-object p2, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-direct {p1, p2}, Lcom/phicomm/speaker/zxing/camera/e;-><init>(Lcom/phicomm/speaker/zxing/camera/b;)V

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/camera/d;->r:Lcom/phicomm/speaker/zxing/camera/e;

    return-void
.end method

.method private static a(III)I
    .locals 1

    int-to-float p0, p0

    .line 316
    sget v0, Lcom/phicomm/speaker/zxing/camera/d;->e:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public a([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10

    .line 402
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/camera/d;->f()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 406
    :cond_0
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v9
.end method

.method public declared-synchronized a(II)V
    .locals 3

    monitor-enter p0

    .line 373
    :try_start_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->m:Z

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/b;->b()Landroid/graphics/Point;

    move-result-object v0

    .line 375
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le p1, v1, :cond_0

    .line 376
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 378
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p2, v1, :cond_1

    .line 379
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 381
    :cond_1
    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 382
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 383
    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr p1, v1

    add-int/2addr p2, v0

    invoke-direct {v2, v1, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->k:Landroid/graphics/Rect;

    .line 384
    sget-object p1, Lcom/phicomm/speaker/zxing/camera/d;->f:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Calculated manual framing rect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->k:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 385
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/camera/d;->l:Landroid/graphics/Rect;

    goto :goto_0

    .line 387
    :cond_2
    iput p1, p0, Lcom/phicomm/speaker/zxing/camera/d;->p:I

    .line 388
    iput p2, p0, Lcom/phicomm/speaker/zxing/camera/d;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 372
    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/b;->b()Landroid/graphics/Point;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    sget v2, Lcom/phicomm/speaker/zxing/camera/d;->a:I

    sget v3, Lcom/phicomm/speaker/zxing/camera/d;->c:I

    invoke-static {v1, v2, v3}, Lcom/phicomm/speaker/zxing/camera/d;->a(III)I

    move-result v1

    .line 296
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 297
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 300
    iget p1, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    .line 303
    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    invoke-virtual {v2}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getTextHeight()I

    move-result v2

    .line 304
    :goto_0
    iget-object v3, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    invoke-virtual {v3}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getHeight()I

    move-result v3

    if-lez v3, :cond_2

    .line 306
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 309
    :cond_2
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 311
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, v1

    add-int/2addr v1, v0

    invoke-direct {v2, p1, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->k:Landroid/graphics/Rect;

    .line 312
    sget-object p1, Lcom/phicomm/speaker/zxing/camera/d;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calculated framing rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized a(Landroid/os/Handler;I)V
    .locals 2

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;

    if-eqz v0, :cond_0

    .line 239
    iget-boolean v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->n:Z

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->r:Lcom/phicomm/speaker/zxing/camera/e;

    invoke-virtual {v1, p1, p2}, Lcom/phicomm/speaker/zxing/camera/e;->a(Landroid/os/Handler;I)V

    .line 241
    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/zxing/camera/d;->r:Lcom/phicomm/speaker/zxing/camera/e;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 237
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/view/SurfaceHolder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;

    if-nez v0, :cond_1

    .line 116
    iget v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->o:I

    invoke-static {v0}, Lcom/phicomm/speaker/zxing/camera/open/b;->a(I)Lcom/phicomm/speaker/zxing/camera/open/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Camera.open() failed to return object from driver"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_0
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;

    .line 123
    :cond_1
    iget-boolean v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->m:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 124
    iput-boolean v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->m:Z

    .line 125
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/zxing/camera/b;->a(Lcom/phicomm/speaker/zxing/camera/open/a;)V

    .line 126
    iget v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->p:I

    if-lez v1, :cond_2

    iget v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->q:I

    if-lez v1, :cond_2

    .line 127
    iget v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->p:I

    iget v4, p0, Lcom/phicomm/speaker/zxing/camera/d;->q:I

    invoke-virtual {p0, v1, v4}, Lcom/phicomm/speaker/zxing/camera/d;->a(II)V

    .line 128
    iput v3, p0, Lcom/phicomm/speaker/zxing/camera/d;->p:I

    .line 129
    iput v3, p0, Lcom/phicomm/speaker/zxing/camera/d;->q:I

    .line 133
    :cond_2
    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-virtual {v5, v0, v3}, Lcom/phicomm/speaker/zxing/camera/b;->a(Lcom/phicomm/speaker/zxing/camera/open/a;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 142
    :catch_0
    :try_start_2
    sget-object v3, Lcom/phicomm/speaker/zxing/camera/d;->f:Ljava/lang/String;

    const-string v5, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v3, Lcom/phicomm/speaker/zxing/camera/d;->f:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resetting to saved camera params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    .line 146
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 147
    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :try_start_3
    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 150
    iget-object v3, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-virtual {v3, v0, v2}, Lcom/phicomm/speaker/zxing/camera/b;->a(Lcom/phicomm/speaker/zxing/camera/open/a;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 153
    :catch_1
    :try_start_4
    sget-object v0, Lcom/phicomm/speaker/zxing/camera/d;->f:Ljava/lang/String;

    const-string v2, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_4
    :goto_1
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 113
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Z)V
    .locals 4

    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;

    if-eqz v0, :cond_2

    .line 215
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/zxing/camera/b;->a(Landroid/hardware/Camera;)Z

    move-result v1

    if-eq p1, v1, :cond_2

    .line 216
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->j:Lcom/phicomm/speaker/zxing/camera/a;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 218
    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->j:Lcom/phicomm/speaker/zxing/camera/a;

    invoke-virtual {v2}, Lcom/phicomm/speaker/zxing/camera/a;->b()V

    const/4 v2, 0x0

    .line 219
    iput-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->j:Lcom/phicomm/speaker/zxing/camera/a;

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/phicomm/speaker/zxing/camera/b;->a(Landroid/hardware/Camera;Z)V

    if-eqz v1, :cond_2

    .line 223
    new-instance p1, Lcom/phicomm/speaker/zxing/camera/a;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/phicomm/speaker/zxing/camera/a;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/camera/d;->j:Lcom/phicomm/speaker/zxing/camera/a;

    .line 224
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/camera/d;->j:Lcom/phicomm/speaker/zxing/camera/a;

    invoke-virtual {p1}, Lcom/phicomm/speaker/zxing/camera/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 213
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 168
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;

    if-eqz v0, :cond_0

    .line 185
    iget-boolean v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->n:Z

    if-nez v1, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    const/4 v1, 0x1

    .line 187
    iput-boolean v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->n:Z

    .line 188
    new-instance v1, Lcom/phicomm/speaker/zxing/camera/a;

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/phicomm/speaker/zxing/camera/a;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->j:Lcom/phicomm/speaker/zxing/camera/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 183
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->j:Lcom/phicomm/speaker/zxing/camera/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->j:Lcom/phicomm/speaker/zxing/camera/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/a;->b()V

    .line 198
    iput-object v1, p0, Lcom/phicomm/speaker/zxing/camera/d;->j:Lcom/phicomm/speaker/zxing/camera/a;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->n:Z

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/open/a;->a()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 202
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->r:Lcom/phicomm/speaker/zxing/camera/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/zxing/camera/e;->a(Landroid/os/Handler;I)V

    .line 203
    iput-boolean v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->n:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 195
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->k:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->i:Lcom/phicomm/speaker/zxing/camera/open/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 256
    monitor-exit p0

    return-object v1

    .line 258
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/b;->b()Landroid/graphics/Point;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 261
    monitor-exit p0

    return-object v1

    .line 266
    :cond_1
    :try_start_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    sget v2, Lcom/phicomm/speaker/zxing/camera/d;->a:I

    sget v3, Lcom/phicomm/speaker/zxing/camera/d;->c:I

    invoke-static {v1, v2, v3}, Lcom/phicomm/speaker/zxing/camera/d;->a(III)I

    move-result v1

    .line 270
    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    invoke-virtual {v2}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getTextHeight()I

    move-result v2

    .line 271
    :goto_0
    iget-object v3, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    invoke-virtual {v3}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getHeight()I

    move-result v3

    if-lez v3, :cond_3

    .line 273
    iget-object v3, p0, Lcom/phicomm/speaker/zxing/camera/d;->s:Lcom/phicomm/speaker/zxing/ViewfinderView;

    invoke-virtual {v3}, Lcom/phicomm/speaker/zxing/ViewfinderView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 276
    :cond_3
    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 278
    :goto_1
    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 280
    new-instance v2, Landroid/graphics/Rect;

    add-int v4, v0, v1

    add-int/2addr v1, v3

    invoke-direct {v2, v0, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->k:Landroid/graphics/Rect;

    .line 281
    sget-object v0, Lcom/phicomm/speaker/zxing/camera/d;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated framing rect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->k:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 253
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->l:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 333
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/camera/d;->e()Landroid/graphics/Rect;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 335
    monitor-exit p0

    return-object v1

    .line 337
    :cond_0
    :try_start_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 338
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/b;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 339
    iget-object v3, p0, Lcom/phicomm/speaker/zxing/camera/d;->h:Lcom/phicomm/speaker/zxing/camera/b;

    invoke-virtual {v3}, Lcom/phicomm/speaker/zxing/camera/b;->b()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v0, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 345
    :cond_1
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 346
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v4

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 347
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v4

    iget v4, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v4

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 348
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v0

    iget v0, v3, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v0

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 349
    iput-object v2, p0, Lcom/phicomm/speaker/zxing/camera/d;->l:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 342
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v1

    .line 351
    :cond_3
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/camera/d;->l:Landroid/graphics/Rect;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 331
    monitor-exit p0

    throw v0
.end method
