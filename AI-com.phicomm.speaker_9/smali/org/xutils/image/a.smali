.class final Lorg/xutils/image/a;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lorg/xutils/common/Callback$CacheCallback;
.implements Lorg/xutils/common/Callback$Cancelable;
.implements Lorg/xutils/common/Callback$PrepareCallback;
.implements Lorg/xutils/common/Callback$ProgressCallback;
.implements Lorg/xutils/common/Callback$TypedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/image/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$CacheCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$Cancelable;",
        "Lorg/xutils/common/Callback$PrepareCallback<",
        "Ljava/io/File;",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$ProgressCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$TypedCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final m:Ljava/util/concurrent/Executor;

.field private static final n:Lorg/xutils/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/cache/LruCache<",
            "Lorg/xutils/image/b;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/xutils/image/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/lang/reflect/Type;


# instance fields
.field private a:Lorg/xutils/image/b;

.field private b:Lorg/xutils/image/ImageOptions;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final e:J

.field private volatile f:Z

.field private volatile g:Z

.field private h:Lorg/xutils/common/Callback$Cancelable;

.field private i:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/xutils/common/Callback$PrepareCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$PrepareCallback<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lorg/xutils/common/Callback$CacheCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CacheCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/xutils/common/Callback$ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$ProgressCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/xutils/image/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v0, Lorg/xutils/image/a;->m:Ljava/util/concurrent/Executor;

    .line 63
    new-instance v0, Lorg/xutils/image/a$1;

    const/high16 v1, 0x400000

    invoke-direct {v0, v1}, Lorg/xutils/image/a$1;-><init>(I)V

    sput-object v0, Lorg/xutils/image/a;->n:Lorg/xutils/cache/LruCache;

    .line 97
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    const-string v2, "activity"

    .line 98
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v2, 0x100000

    mul-int/2addr v2, v0

    .line 101
    div-int/lit8 v0, v2, 0x8

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 105
    :cond_0
    sget-object v1, Lorg/xutils/image/a;->n:Lorg/xutils/cache/LruCache;

    invoke-virtual {v1, v0}, Lorg/xutils/cache/LruCache;->resize(I)V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/image/a;->o:Ljava/util/HashMap;

    .line 358
    const-class v0, Ljava/io/File;

    sput-object v0, Lorg/xutils/image/a;->p:Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lorg/xutils/image/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xutils/image/a;->e:J

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lorg/xutils/image/a;->f:Z

    .line 53
    iput-boolean v0, p0, Lorg/xutils/image/a;->g:Z

    .line 391
    iput-boolean v0, p0, Lorg/xutils/image/a;->q:Z

    return-void
.end method

.method static synthetic a(Lorg/xutils/image/a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/xutils/image/a;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "view is null"

    .line 187
    invoke-static {v0, p2, p0, p3}, Lorg/xutils/image/a;->a(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object v0

    .line 191
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "url is null"

    .line 192
    invoke-static {p0, p2, p1, p3}, Lorg/xutils/image/a;->a(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    .line 197
    sget-object p2, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    .line 199
    :cond_2
    invoke-virtual {p2, p0}, Lorg/xutils/image/ImageOptions;->a(Landroid/widget/ImageView;)V

    .line 203
    new-instance v1, Lorg/xutils/image/b;

    invoke-direct {v1, p1, p2}, Lorg/xutils/image/b;-><init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    .line 204
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 205
    instance-of v3, v2, Lorg/xutils/image/AsyncDrawable;

    if-eqz v3, :cond_4

    .line 206
    check-cast v2, Lorg/xutils/image/AsyncDrawable;

    invoke-virtual {v2}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/a;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 207
    iget-boolean v3, v2, Lorg/xutils/image/a;->f:Z

    if-nez v3, :cond_5

    .line 208
    iget-object v3, v2, Lorg/xutils/image/a;->a:Lorg/xutils/image/b;

    invoke-virtual {v1, v3}, Lorg/xutils/image/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v0

    .line 213
    :cond_3
    invoke-virtual {v2}, Lorg/xutils/image/a;->cancel()V

    goto :goto_0

    .line 216
    :cond_4
    instance-of v3, v2, Lorg/xutils/image/d;

    if-eqz v3, :cond_5

    .line 217
    move-object v3, v2

    check-cast v3, Lorg/xutils/image/d;

    invoke-interface {v3}, Lorg/xutils/image/d;->getMemCacheKey()Lorg/xutils/image/b;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 218
    invoke-virtual {v3, v1}, Lorg/xutils/image/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 219
    sget-object v3, Lorg/xutils/image/a;->n:Lorg/xutils/cache/LruCache;

    invoke-virtual {v3, v1, v2}, Lorg/xutils/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->isUseMemCache()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 226
    sget-object v2, Lorg/xutils/image/a;->n:Lorg/xutils/cache/LruCache;

    invoke-virtual {v2, v1}, Lorg/xutils/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 227
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_7

    .line 228
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 229
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move-object v1, v0

    :cond_7
    if-eqz v1, :cond_f

    const/4 v2, 0x0

    .line 237
    :try_start_0
    instance-of v3, p3, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v3, :cond_8

    .line 238
    move-object v3, p3

    check-cast v3, Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v3}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    .line 241
    :cond_8
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 242
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    .line 244
    :try_start_1
    instance-of v4, p3, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v4, :cond_a

    .line 245
    move-object v4, p3

    check-cast v4, Lorg/xutils/common/Callback$CacheCallback;

    invoke-interface {v4, v1}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_c

    .line 249
    :try_start_2
    new-instance v0, Lorg/xutils/image/a;

    invoke-direct {v0}, Lorg/xutils/image/a;-><init>()V

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/xutils/image/a;->b(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_9

    if-eqz p3, :cond_9

    .line 262
    :try_start_3
    invoke-interface {p3}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 264
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_1
    return-object v0

    :catchall_0
    move-exception p0

    move v2, v1

    goto :goto_4

    :catch_1
    move-exception v0

    move v3, v1

    goto :goto_3

    :cond_a
    if-eqz p3, :cond_b

    .line 252
    :try_start_4
    invoke-interface {p3, v1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_b
    move v1, v3

    :cond_c
    if-eqz v1, :cond_d

    if-eqz p3, :cond_d

    .line 262
    :try_start_5
    invoke-interface {p3}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 264
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_2
    return-object v0

    :catch_3
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_4
    move-exception v0

    move v3, v2

    .line 255
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 258
    :try_start_7
    new-instance v0, Lorg/xutils/image/a;

    invoke-direct {v0}, Lorg/xutils/image/a;-><init>()V

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/xutils/image/a;->b(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-object p0

    :catchall_2
    move-exception p0

    move v2, v3

    :goto_4
    if-eqz v2, :cond_e

    if-eqz p3, :cond_e

    .line 262
    :try_start_8
    invoke-interface {p3}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :cond_e
    :goto_5
    throw p0

    .line 270
    :cond_f
    new-instance v0, Lorg/xutils/image/a;

    invoke-direct {v0}, Lorg/xutils/image/a;-><init>()V

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/xutils/image/a;->b(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CacheCallback<",
            "Ljava/io/File;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 160
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "url is null"

    const/4 v0, 0x0

    .line 161
    invoke-static {v0, p1, p0, p2}, Lorg/xutils/image/a;->a(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object v0

    .line 165
    :cond_0
    invoke-static {p0, p1}, Lorg/xutils/image/a;->a(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object p0

    .line 166
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "url is null"

    const/4 v0, 0x0

    .line 135
    invoke-static {v0, p1, p0, p2}, Lorg/xutils/image/a;->a(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    return-object v0

    .line 140
    :cond_0
    sget-object v0, Lorg/xutils/image/a;->o:Ljava/util/HashMap;

    monitor-enter v0

    .line 141
    :try_start_0
    sget-object v1, Lorg/xutils/image/a;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/image/a$a;

    if-nez v1, :cond_1

    .line 143
    new-instance v1, Lorg/xutils/image/a$a;

    invoke-direct {v1}, Lorg/xutils/image/a$a;-><init>()V

    .line 145
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {v1, p0, p1, p2}, Lorg/xutils/image/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 145
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static a(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;
    .locals 1

    .line 475
    new-instance v0, Lorg/xutils/http/RequestParams;

    invoke-direct {v0, p0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    const-string p0, "xUtils_img"

    .line 476
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setCacheDirName(Ljava/lang/String;)V

    const/16 p0, 0x1f40

    .line 477
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    .line 478
    sget-object p0, Lorg/xutils/common/task/Priority;->BG_LOW:Lorg/xutils/common/task/Priority;

    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setPriority(Lorg/xutils/common/task/Priority;)V

    .line 479
    sget-object p0, Lorg/xutils/image/a;->m:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setExecutor(Ljava/util/concurrent/Executor;)V

    const/4 p0, 0x1

    .line 480
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setCancelFast(Z)V

    const/4 p0, 0x0

    .line 481
    invoke-virtual {v0, p0}, Lorg/xutils/http/RequestParams;->setUseCookie(Z)V

    if-eqz p1, :cond_0

    .line 483
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getParamsBuilder()Lorg/xutils/image/ImageOptions$ParamsBuilder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 485
    invoke-interface {p0, v0, p1}, Lorg/xutils/image/ImageOptions$ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static a()V
    .locals 1

    .line 113
    sget-object v0, Lorg/xutils/image/a;->n:Lorg/xutils/cache/LruCache;

    invoke-virtual {v0}, Lorg/xutils/cache/LruCache;->evictAll()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 525
    iget-object v0, p0, Lorg/xutils/image/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 527
    iget-object v1, p0, Lorg/xutils/image/a;->b:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 528
    instance-of v1, p1, Lorg/xutils/image/GifDrawable;

    if-eqz v1, :cond_1

    .line 529
    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v1, v2, :cond_0

    .line 530
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 532
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 534
    :cond_1
    iget-object v1, p0, Lorg/xutils/image/a;->b:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 535
    iget-object v1, p0, Lorg/xutils/image/a;->b:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/xutils/image/ImageAnimationHelper;->animationDisplay(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 536
    :cond_2
    iget-object v1, p0, Lorg/xutils/image/a;->b:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->isFadeIn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 537
    invoke-static {v0, p1}, Lorg/xutils/image/ImageAnimationHelper;->fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 539
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static a(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lorg/xutils/image/ImageOptions;",
            "Ljava/lang/String;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "*>;)V"
        }
    .end annotation

    .line 556
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/a$3;

    invoke-direct {v1, p3, p0, p1, p2}, Lorg/xutils/image/a$3;-><init>(Lorg/xutils/common/Callback$CommonCallback;Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Z)Z
    .locals 7

    .line 492
    iget-object v0, p0, Lorg/xutils/image/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 494
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 495
    instance-of v3, v2, Lorg/xutils/image/AsyncDrawable;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 496
    check-cast v2, Lorg/xutils/image/AsyncDrawable;

    invoke-virtual {v2}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/a;

    move-result-object p1

    if-eqz p1, :cond_4

    if-ne p1, p0, :cond_1

    .line 499
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p1}, Lorg/xutils/image/a;->cancel()V

    return v1

    :cond_0
    return v4

    .line 506
    :cond_1
    iget-wide v2, p0, Lorg/xutils/image/a;->e:J

    iget-wide v5, p1, Lorg/xutils/image/a;->e:J

    cmp-long v0, v2, v5

    if-lez v0, :cond_2

    .line 507
    invoke-virtual {p1}, Lorg/xutils/image/a;->cancel()V

    return v4

    .line 510
    :cond_2
    invoke-virtual {p0}, Lorg/xutils/image/a;->cancel()V

    return v1

    :cond_3
    if-eqz p1, :cond_4

    .line 516
    invoke-virtual {p0}, Lorg/xutils/image/a;->cancel()V

    return v1

    :cond_4
    return v4

    :cond_5
    return v1
.end method

.method private b(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/xutils/image/a;->c:Ljava/lang/ref/WeakReference;

    .line 289
    iput-object p3, p0, Lorg/xutils/image/a;->b:Lorg/xutils/image/ImageOptions;

    .line 290
    new-instance v0, Lorg/xutils/image/b;

    invoke-direct {v0, p2, p3}, Lorg/xutils/image/b;-><init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    iput-object v0, p0, Lorg/xutils/image/a;->a:Lorg/xutils/image/b;

    .line 291
    iput-object p4, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    .line 292
    instance-of v0, p4, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 293
    move-object v0, p4

    check-cast v0, Lorg/xutils/common/Callback$ProgressCallback;

    iput-object v0, p0, Lorg/xutils/image/a;->l:Lorg/xutils/common/Callback$ProgressCallback;

    .line 295
    :cond_0
    instance-of v0, p4, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v0, :cond_1

    .line 296
    move-object v0, p4

    check-cast v0, Lorg/xutils/common/Callback$PrepareCallback;

    iput-object v0, p0, Lorg/xutils/image/a;->j:Lorg/xutils/common/Callback$PrepareCallback;

    .line 298
    :cond_1
    instance-of v0, p4, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v0, :cond_2

    .line 299
    check-cast p4, Lorg/xutils/common/Callback$CacheCallback;

    iput-object p4, p0, Lorg/xutils/image/a;->k:Lorg/xutils/common/Callback$CacheCallback;

    .line 304
    :cond_2
    invoke-virtual {p3}, Lorg/xutils/image/ImageOptions;->isForceLoadingDrawable()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 305
    invoke-virtual {p3, p1}, Lorg/xutils/image/ImageOptions;->getLoadingDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 306
    invoke-virtual {p3}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 307
    new-instance v0, Lorg/xutils/image/AsyncDrawable;

    invoke-direct {v0, p0, p4}, Lorg/xutils/image/AsyncDrawable;-><init>(Lorg/xutils/image/a;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 309
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 310
    new-instance v0, Lorg/xutils/image/AsyncDrawable;

    invoke-direct {v0, p0, p4}, Lorg/xutils/image/AsyncDrawable;-><init>(Lorg/xutils/image/a;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    :goto_0
    invoke-static {p2, p3}, Lorg/xutils/image/a;->a(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object p3

    .line 315
    instance-of p4, p1, Lorg/xutils/image/a$a;

    if-eqz p4, :cond_4

    .line 316
    sget-object p4, Lorg/xutils/image/a;->o:Ljava/util/HashMap;

    monitor-enter p4

    .line 317
    :try_start_0
    sget-object v0, Lorg/xutils/image/a;->o:Ljava/util/HashMap;

    check-cast p1, Lorg/xutils/image/a$a;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    monitor-exit p4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 320
    :cond_4
    :goto_1
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object p1

    invoke-interface {p1, p3, p0}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/image/a;->h:Lorg/xutils/common/Callback$Cancelable;

    return-object p1
.end method

.method static synthetic b(Lorg/xutils/image/a;)Lorg/xutils/image/b;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/xutils/image/a;->a:Lorg/xutils/image/b;

    return-object p0
.end method

.method static b()V
    .locals 1

    const-string v0, "xUtils_img"

    .line 118
    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/cache/LruDiskCache;->clearCacheFiles()V

    return-void
.end method

.method static synthetic c(Lorg/xutils/image/a;)Lorg/xutils/image/ImageOptions;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/xutils/image/a;->b:Lorg/xutils/image/ImageOptions;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 545
    iget-object v0, p0, Lorg/xutils/image/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 547
    iget-object v1, p0, Lorg/xutils/image/a;->b:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1, v0}, Lorg/xutils/image/ImageOptions;->getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 548
    iget-object v2, p0, Lorg/xutils/image/a;->b:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v2}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 549
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lorg/xutils/image/a;)Lorg/xutils/common/Callback$CommonCallback;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lorg/xutils/image/a;->f:Z

    .line 326
    iput-boolean v0, p0, Lorg/xutils/image/a;->g:Z

    .line 327
    iget-object v0, p0, Lorg/xutils/image/a;->h:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/xutils/image/a;->h:Lorg/xutils/common/Callback$Cancelable;

    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->cancel()V

    :cond_0
    return-void
.end method

.method public getLoadType()Ljava/lang/reflect/Type;
    .locals 1

    .line 362
    sget-object v0, Lorg/xutils/image/a;->p:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 334
    iget-boolean v0, p0, Lorg/xutils/image/a;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/xutils/image/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onCache(Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    const/4 v0, 0x1

    .line 395
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->a(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_3

    .line 398
    iput-boolean v0, p0, Lorg/xutils/image/a;->q:Z

    .line 399
    invoke-direct {p0, p1}, Lorg/xutils/image/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v1, p0, Lorg/xutils/image/a;->k:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v1, :cond_1

    .line 401
    iget-object v0, p0, Lorg/xutils/image/a;->k:Lorg/xutils/common/Callback$CacheCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 402
    :cond_1
    iget-object v1, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v1, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    return v0

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public bridge synthetic onCache(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/xutils/image/a;->onCache(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method

.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 1

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lorg/xutils/image/a;->f:Z

    const/4 v0, 0x0

    .line 450
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 426
    iput-boolean v0, p0, Lorg/xutils/image/a;->f:Z

    const/4 v0, 0x0

    .line 427
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    instance-of v0, p1, Lorg/xutils/ex/FileLockedException;

    if-eqz v0, :cond_1

    .line 430
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ImageFileLocked: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/xutils/image/a;->a:Lorg/xutils/image/b;

    iget-object p2, p2, Lorg/xutils/image/b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object p1

    new-instance p2, Lorg/xutils/image/a$2;

    invoke-direct {p2, p0}, Lorg/xutils/image/a$2;-><init>(Lorg/xutils/image/a;)V

    const-wide/16 v0, 0xa

    invoke-interface {p1, p2, v0, v1}, Lorg/xutils/common/TaskController;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lorg/xutils/image/a;->a:Lorg/xutils/image/b;

    iget-object v0, v0, Lorg/xutils/image/b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    invoke-direct {p0}, Lorg/xutils/image/a;->c()V

    .line 442
    iget-object v0, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1, p2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    :cond_2
    return-void
.end method

.method public onFinished()V
    .locals 3

    const/4 v0, 0x1

    .line 459
    iput-boolean v0, p0, Lorg/xutils/image/a;->f:Z

    .line 460
    iget-object v0, p0, Lorg/xutils/image/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 461
    instance-of v0, v0, Lorg/xutils/image/a$a;

    if-eqz v0, :cond_0

    .line 462
    sget-object v0, Lorg/xutils/image/a;->o:Ljava/util/HashMap;

    monitor-enter v0

    .line 463
    :try_start_0
    sget-object v1, Lorg/xutils/image/a;->o:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/xutils/image/a;->a:Lorg/xutils/image/b;

    iget-object v2, v2, Lorg/xutils/image/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 467
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V

    :cond_2
    return-void
.end method

.method public onLoading(JJZ)V
    .locals 7

    const/4 v0, 0x1

    .line 353
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/a;->l:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lorg/xutils/image/a;->l:Lorg/xutils/common/Callback$ProgressCallback;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/xutils/common/Callback$ProgressCallback;->onLoading(JJZ)V

    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 346
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/a;->l:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/xutils/image/a;->l:Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onStarted()V

    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 414
    iget-boolean v0, p0, Lorg/xutils/image/a;->q:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/xutils/image/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 417
    invoke-direct {p0, p1}, Lorg/xutils/image/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object v0, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lorg/xutils/image/a;->i:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/xutils/image/a;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onWaiting()V
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/xutils/image/a;->l:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/xutils/image/a;->l:Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    :cond_0
    return-void
.end method

.method public prepare(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x1

    .line 367
    invoke-direct {p0, v0}, Lorg/xutils/image/a;->a(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 371
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/xutils/image/a;->j:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lorg/xutils/image/a;->j:Lorg/xutils/common/Callback$PrepareCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 375
    iget-object v0, p0, Lorg/xutils/image/a;->b:Lorg/xutils/image/ImageOptions;

    invoke-static {p1, v0, p0}, Lorg/xutils/image/ImageDecoder;->a(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 378
    instance-of v2, v0, Lorg/xutils/image/d;

    if-eqz v2, :cond_3

    .line 379
    move-object v2, v0

    check-cast v2, Lorg/xutils/image/d;

    iget-object v3, p0, Lorg/xutils/image/a;->a:Lorg/xutils/image/b;

    invoke-interface {v2, v3}, Lorg/xutils/image/d;->setMemCacheKey(Lorg/xutils/image/b;)V

    .line 380
    sget-object v2, Lorg/xutils/image/a;->n:Lorg/xutils/cache/LruCache;

    iget-object v3, p0, Lorg/xutils/image/a;->a:Lorg/xutils/image/b;

    invoke-virtual {v2, v3, v0}, Lorg/xutils/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 385
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 386
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public bridge synthetic prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/xutils/image/a;->prepare(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
