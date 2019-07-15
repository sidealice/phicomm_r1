.class public final Lcom/phicomm/speaker/zxing/CaptureActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/phicomm/speaker/zxing/h;


# static fields
.field private static final a:Ljava/lang/String; = "CaptureActivity"


# instance fields
.field private b:Lcom/phicomm/speaker/zxing/camera/d;

.field private d:Lcom/phicomm/speaker/zxing/b;

.field private e:Lcom/google/zxing/Result;

.field private f:Lcom/phicomm/speaker/zxing/ViewfinderView;

.field private g:Z

.field private h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Lcom/phicomm/speaker/zxing/f;

.field private l:Lcom/phicomm/speaker/zxing/a;

.field private m:Lcom/phicomm/speaker/zxing/AmbientLightManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/zxing/CaptureActivity;)Lcom/phicomm/speaker/zxing/ViewfinderView;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->f:Lcom/phicomm/speaker/zxing/ViewfinderView;

    return-object p0
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 6

    if-nez p1, :cond_0

    .line 311
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SurfaceHolder provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 313
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    sget-object p1, Lcom/phicomm/speaker/zxing/CaptureActivity;->a:Ljava/lang/String;

    const-string v0, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/zxing/camera/d;->a(Landroid/view/SurfaceHolder;)V

    .line 322
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    if-nez p1, :cond_2

    .line 323
    new-instance p1, Lcom/phicomm/speaker/zxing/b;

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->h:Ljava/util/Collection;

    iget-object v3, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->i:Ljava/util/Map;

    iget-object v4, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/phicomm/speaker/zxing/b;-><init>(Lcom/phicomm/speaker/zxing/h;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/phicomm/speaker/zxing/camera/d;)V

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    :cond_2
    const/4 p1, 0x0

    .line 325
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/zxing/CaptureActivity;->a(Lcom/google/zxing/Result;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 330
    sget-object v0, Lcom/phicomm/speaker/zxing/CaptureActivity;->a:Ljava/lang/String;

    const-string v1, "Unexpected error initializing camera"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->o()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 327
    sget-object v0, Lcom/phicomm/speaker/zxing/CaptureActivity;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->o()V

    :goto_0
    return-void
.end method

.method private a(Lcom/google/zxing/Result;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    if-nez v0, :cond_0

    .line 246
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->e:Lcom/google/zxing/Result;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 249
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->e:Lcom/google/zxing/Result;

    .line 251
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->e:Lcom/google/zxing/Result;

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    const v0, 0x7f09007f

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->e:Lcom/google/zxing/Result;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 253
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/zxing/b;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    const/4 p1, 0x0

    .line 255
    iput-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->e:Lcom/google/zxing/Result;

    :goto_0
    return-void
.end method

.method private k()V
    .locals 3

    .line 144
    new-instance v0, Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->f:Lcom/phicomm/speaker/zxing/ViewfinderView;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/zxing/camera/d;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/zxing/ViewfinderView;)V

    iput-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->f:Lcom/phicomm/speaker/zxing/ViewfinderView;

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/zxing/ViewfinderView;->setCameraManager(Lcom/phicomm/speaker/zxing/camera/d;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    .line 149
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->p()V

    .line 151
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->l:Lcom/phicomm/speaker/zxing/a;

    invoke-virtual {v1}, Lcom/phicomm/speaker/zxing/a;->a()V

    .line 152
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->m:Lcom/phicomm/speaker/zxing/AmbientLightManager;

    iget-object v2, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/zxing/AmbientLightManager;->a(Lcom/phicomm/speaker/zxing/camera/d;)V

    .line 154
    iget-object v1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->k:Lcom/phicomm/speaker/zxing/f;

    invoke-virtual {v1}, Lcom/phicomm/speaker/zxing/f;->c()V

    .line 156
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->h:Ljava/util/Collection;

    .line 157
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->j:Ljava/lang/String;

    const v0, 0x7f0901b0

    .line 159
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 160
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 161
    iget-boolean v1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->g:Z

    if-eqz v1, :cond_0

    .line 165
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/b;->a()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->k:Lcom/phicomm/speaker/zxing/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/f;->b()V

    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->m:Lcom/phicomm/speaker/zxing/AmbientLightManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/AmbientLightManager;->a()V

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->l:Lcom/phicomm/speaker/zxing/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/a;->close()V

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/d;->b()V

    .line 182
    iget-boolean v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->g:Z

    if-nez v0, :cond_1

    const v0, 0x7f0901b0

    .line 183
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 184
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 185
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/b;->a()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->k:Lcom/phicomm/speaker/zxing/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/f;->b()V

    .line 195
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/camera/d;->b()V

    return-void
.end method

.method private n()V
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->p()V

    const v0, 0x7f0901b0

    .line 200
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 201
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 202
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    .line 203
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->k:Lcom/phicomm/speaker/zxing/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/f;->c()V

    return-void
.end method

.method private o()V
    .locals 4

    const v0, 0x7f0f016c

    .line 336
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->f:Lcom/phicomm/speaker/zxing/ViewfinderView;

    new-instance v1, Lcom/phicomm/speaker/zxing/CaptureActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/zxing/CaptureActivity$1;-><init>(Lcom/phicomm/speaker/zxing/CaptureActivity;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/zxing/ViewfinderView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private p()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->f:Lcom/phicomm/speaker/zxing/ViewfinderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/zxing/ViewfinderView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scan_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0f02a6

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->b(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b0024

    .line 94
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/zxing/CaptureActivity;->setContentView(I)V

    .line 95
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->f()V

    const p1, 0x7f090316

    .line 97
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/zxing/ViewfinderView;

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->f:Lcom/phicomm/speaker/zxing/ViewfinderView;

    return-void
.end method

.method public a(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;F)V
    .locals 0

    .line 290
    iget-object p2, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->k:Lcom/phicomm/speaker/zxing/f;

    invoke-virtual {p2}, Lcom/phicomm/speaker/zxing/f;->a()V

    .line 291
    iget-object p2, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->l:Lcom/phicomm/speaker/zxing/a;

    invoke-virtual {p2}, Lcom/phicomm/speaker/zxing/a;->b()V

    .line 292
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    .line 293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->m()V

    const-string p1, "\u626b\u63cf\u5931\u8d25"

    .line 295
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->n()V

    goto :goto_0

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->m()V

    .line 299
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "SCAN_RESULT"

    .line 300
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/zxing/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 302
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->finish()V

    :goto_0
    return-void
.end method

.method public b()Lcom/phicomm/speaker/zxing/ViewfinderView;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->f:Lcom/phicomm/speaker/zxing/ViewfinderView;

    return-object v0
.end method

.method public c()V
    .locals 0

    .line 366
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->m()V

    .line 367
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->finish()V

    return-void
.end method

.method public d()Landroid/os/Handler;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->d:Lcom/phicomm/speaker/zxing/b;

    return-object v0
.end method

.method public e()Lcom/phicomm/speaker/zxing/camera/d;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    return-object v0
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->g:Z

    .line 102
    new-instance v1, Lcom/phicomm/speaker/zxing/f;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/zxing/f;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->k:Lcom/phicomm/speaker/zxing/f;

    .line 103
    new-instance v1, Lcom/phicomm/speaker/zxing/a;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/zxing/a;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->l:Lcom/phicomm/speaker/zxing/a;

    .line 104
    new-instance v1, Lcom/phicomm/speaker/zxing/AmbientLightManager;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/zxing/AmbientLightManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->m:Lcom/phicomm/speaker/zxing/AmbientLightManager;

    const v1, 0x7f120002

    .line 106
    invoke-static {p0, v1, v0}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->f:Lcom/phicomm/speaker/zxing/ViewfinderView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/ViewfinderView;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 214
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->k:Lcom/phicomm/speaker/zxing/f;

    invoke-virtual {v0}, Lcom/phicomm/speaker/zxing/f;->d()V

    .line 216
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/phicomm/speaker/a/d;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1b

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/zxing/camera/d;->a(Z)V

    return v2

    .line 235
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {p1, v2}, Lcom/phicomm/speaker/zxing/camera/d;->a(Z)V

    return v2

    :cond_0
    return v2

    .line 223
    :cond_1
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/zxing/CaptureActivity;->setResult(I)V

    .line 224
    invoke-virtual {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->finish()V

    .line 240
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/phicomm/speaker/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->l()V

    .line 209
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 131
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/phicomm/speaker/zxing/CaptureActivity;->k()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const-string v0, "onWindowFocusChanged"

    .line 118
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 119
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    if-nez p1, :cond_0

    .line 122
    new-instance p1, Lcom/phicomm/speaker/zxing/camera/d;

    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->f:Lcom/phicomm/speaker/zxing/ViewfinderView;

    invoke-direct {p1, v0, v1}, Lcom/phicomm/speaker/zxing/camera/d;-><init>(Landroid/content/Context;Lcom/phicomm/speaker/zxing/ViewfinderView;)V

    iput-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->b:Lcom/phicomm/speaker/zxing/camera/d;

    invoke-virtual {p1, p0}, Lcom/phicomm/speaker/zxing/camera/d;->a(Landroid/app/Activity;)V

    .line 125
    iget-object p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->f:Lcom/phicomm/speaker/zxing/ViewfinderView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/zxing/ViewfinderView;->setIsFirst(Z)V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    if-nez p1, :cond_0

    .line 262
    sget-object v0, Lcom/phicomm/speaker/zxing/CaptureActivity;->a:Ljava/lang/String;

    const-string v1, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    iget-boolean v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->g:Z

    .line 266
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/zxing/CaptureActivity;->a(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/phicomm/speaker/zxing/CaptureActivity;->g:Z

    return-void
.end method
