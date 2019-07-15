.class final Lorg/xutils/image/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lorg/xutils/common/Callback$PrepareCallback;
.implements Lorg/xutils/common/Callback$CacheCallback;
.implements Lorg/xutils/common/Callback$ProgressCallback;
.implements Lorg/xutils/common/Callback$TypedCallback;
.implements Lorg/xutils/common/Callback$Cancelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/image/ImageLoader$FakeImageView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$PrepareCallback",
        "<",
        "Ljava/io/File;",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$CacheCallback",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$ProgressCallback",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$TypedCallback",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Lorg/xutils/common/Callback$Cancelable;"
    }
.end annotation


# static fields
.field private static final DISK_CACHE_DIR_NAME:Ljava/lang/String; = "xUtils_img"

.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final FAKE_IMG_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageLoader$FakeImageView;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEM_CACHE:Lorg/xutils/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/cache/LruCache",
            "<",
            "Lorg/xutils/image/MemCacheKey;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEM_CACHE_MIN_SIZE:I = 0x400000

.field private static final SEQ_SEEK:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final loadType:Ljava/lang/reflect/Type;


# instance fields
.field private cacheCallback:Lorg/xutils/common/Callback$CacheCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CacheCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private callback:Lorg/xutils/common/Callback$CommonCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private cancelable:Lorg/xutils/common/Callback$Cancelable;

.field private volatile cancelled:Z

.field private hasCache:Z

.field private key:Lorg/xutils/image/MemCacheKey;

.field private options:Lorg/xutils/image/ImageOptions;

.field private prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$PrepareCallback",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private progressCallback:Lorg/xutils/common/Callback$ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/Callback$ProgressCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final seq:J

.field private volatile stopped:Z

.field private viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/high16 v6, 0x400000

    .line 49
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v2, Lorg/xutils/image/ImageLoader;->SEQ_SEEK:Ljava/util/concurrent/atomic/AtomicLong;

    .line 61
    new-instance v2, Lorg/xutils/common/task/PriorityExecutor;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    sput-object v2, Lorg/xutils/image/ImageLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 63
    new-instance v2, Lorg/xutils/image/ImageLoader$1;

    invoke-direct {v2, v6}, Lorg/xutils/image/ImageLoader$1;-><init>(I)V

    sput-object v2, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    .line 97
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v2

    const-string v3, "activity"

    .line 98
    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    .line 101
    .local v1, "memClass":I
    const/high16 v2, 0x100000

    mul-int/2addr v2, v1

    div-int/lit8 v0, v2, 0x8

    .line 102
    .local v0, "cacheSize":I
    if-ge v0, v6, :cond_0

    .line 103
    const/high16 v0, 0x400000

    .line 105
    :cond_0
    sget-object v2, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v2, v0}, Lorg/xutils/cache/LruCache;->resize(I)V

    .line 121
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    .line 358
    const-class v2, Ljava/io/File;

    sput-object v2, Lorg/xutils/image/ImageLoader;->loadType:Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lorg/xutils/image/ImageLoader;->SEQ_SEEK:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xutils/image/ImageLoader;->seq:J

    .line 52
    iput-boolean v2, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 53
    iput-boolean v2, p0, Lorg/xutils/image/ImageLoader;->cancelled:Z

    .line 391
    iput-boolean v2, p0, Lorg/xutils/image/ImageLoader;->hasCache:Z

    .line 109
    return-void
.end method

.method static synthetic access$000(Lorg/xutils/image/ImageLoader;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/image/ImageLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xutils/image/ImageLoader;)Lorg/xutils/image/MemCacheKey;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/image/ImageLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xutils/image/ImageLoader;)Lorg/xutils/image/ImageOptions;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/image/ImageLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    return-object v0
.end method

.method static synthetic access$300(Lorg/xutils/image/ImageLoader;)Lorg/xutils/common/Callback$CommonCallback;
    .locals 1
    .param p0, "x0"    # Lorg/xutils/image/ImageLoader;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    return-object v0
.end method

.method static clearCacheFiles()V
    .locals 1

    .prologue
    .line 118
    const-string v0, "xUtils_img"

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/cache/LruDiskCache;->clearCacheFiles()V

    .line 119
    return-void
.end method

.method static clearMemCache()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v0}, Lorg/xutils/cache/LruCache;->evictAll()V

    .line 114
    return-void
.end method

.method private static createRequestParams(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "options"    # Lorg/xutils/image/ImageOptions;

    .prologue
    .line 475
    new-instance v0, Lorg/xutils/http/RequestParams;

    invoke-direct {v0, p0}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 476
    .local v0, "params":Lorg/xutils/http/RequestParams;
    const-string v2, "xUtils_img"

    invoke-virtual {v0, v2}, Lorg/xutils/http/RequestParams;->setCacheDirName(Ljava/lang/String;)V

    .line 477
    const/16 v2, 0x1f40

    invoke-virtual {v0, v2}, Lorg/xutils/http/RequestParams;->setConnectTimeout(I)V

    .line 478
    sget-object v2, Lorg/xutils/common/task/Priority;->BG_LOW:Lorg/xutils/common/task/Priority;

    invoke-virtual {v0, v2}, Lorg/xutils/http/RequestParams;->setPriority(Lorg/xutils/common/task/Priority;)V

    .line 479
    sget-object v2, Lorg/xutils/image/ImageLoader;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2}, Lorg/xutils/http/RequestParams;->setExecutor(Ljava/util/concurrent/Executor;)V

    .line 480
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xutils/http/RequestParams;->setCancelFast(Z)V

    .line 481
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/xutils/http/RequestParams;->setUseCookie(Z)V

    .line 482
    if-eqz p1, :cond_0

    .line 483
    invoke-virtual {p1}, Lorg/xutils/image/ImageOptions;->getParamsBuilder()Lorg/xutils/image/ImageOptions$ParamsBuilder;

    move-result-object v1

    .line 484
    .local v1, "paramsBuilder":Lorg/xutils/image/ImageOptions$ParamsBuilder;
    if-eqz v1, :cond_0

    .line 485
    invoke-interface {v1, v0, p1}, Lorg/xutils/image/ImageOptions$ParamsBuilder;->buildParams(Lorg/xutils/http/RequestParams;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object v0

    .line 488
    .end local v1    # "paramsBuilder":Lorg/xutils/image/ImageOptions$ParamsBuilder;
    :cond_0
    return-object v0
.end method

.method static doBind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 13
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "options"    # Lorg/xutils/image/ImageOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<Landroid/graphics/drawable/Drawable;>;"
    const/4 v12, 0x0

    .line 184
    move-object v6, p2

    .line 186
    .local v6, "localOptions":Lorg/xutils/image/ImageOptions;
    if-nez p0, :cond_1

    .line 187
    const-string v11, "view is null"

    move-object/from16 v0, p3

    invoke-static {v12, v6, v11, v0}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    move-object v11, v12

    .line 272
    :cond_0
    :goto_0
    return-object v11

    .line 191
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 192
    const-string v11, "url is null"

    move-object/from16 v0, p3

    invoke-static {p0, v6, v11, v0}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    move-object v11, v12

    .line 193
    goto :goto_0

    .line 196
    :cond_2
    if-nez v6, :cond_3

    .line 197
    sget-object v6, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    .line 199
    :cond_3
    invoke-virtual {v6, p0}, Lorg/xutils/image/ImageOptions;->optimizeMaxSize(Landroid/widget/ImageView;)V

    .line 203
    new-instance v4, Lorg/xutils/image/MemCacheKey;

    invoke-direct {v4, p1, v6}, Lorg/xutils/image/MemCacheKey;-><init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    .line 204
    .local v4, "key":Lorg/xutils/image/MemCacheKey;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 205
    .local v8, "oldDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v11, v8, Lorg/xutils/image/AsyncDrawable;

    if-eqz v11, :cond_9

    .line 206
    check-cast v8, Lorg/xutils/image/AsyncDrawable;

    .end local v8    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/ImageLoader;

    move-result-object v5

    .line 207
    .local v5, "loader":Lorg/xutils/image/ImageLoader;
    if-eqz v5, :cond_5

    iget-boolean v11, v5, Lorg/xutils/image/ImageLoader;->stopped:Z

    if-nez v11, :cond_5

    .line 208
    iget-object v11, v5, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    invoke-virtual {v4, v11}, Lorg/xutils/image/MemCacheKey;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v12

    .line 211
    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {v5}, Lorg/xutils/image/ImageLoader;->cancel()V

    .line 224
    .end local v5    # "loader":Lorg/xutils/image/ImageLoader;
    :cond_5
    :goto_1
    const/4 v7, 0x0

    .line 225
    .local v7, "memDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Lorg/xutils/image/ImageOptions;->isUseMemCache()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 226
    sget-object v11, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v11, v4}, Lorg/xutils/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "memDrawable":Landroid/graphics/drawable/Drawable;
    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 227
    .restart local v7    # "memDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v11, v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_7

    move-object v11, v7

    .line 228
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 229
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 230
    :cond_6
    const/4 v7, 0x0

    .line 234
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    if-eqz v7, :cond_e

    .line 235
    const/4 v10, 0x0

    .line 237
    .local v10, "trustMemCache":Z
    :try_start_0
    move-object/from16 v0, p3

    instance-of v11, v0, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v11, :cond_8

    .line 238
    move-object/from16 v0, p3

    check-cast v0, Lorg/xutils/common/Callback$ProgressCallback;

    move-object v11, v0

    invoke-interface {v11}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    .line 241
    :cond_8
    invoke-virtual {v6}, Lorg/xutils/image/ImageOptions;->getImageScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 242
    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    const/4 v10, 0x1

    .line 244
    move-object/from16 v0, p3

    instance-of v11, v0, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v11, :cond_a

    .line 245
    move-object/from16 v0, p3

    check-cast v0, Lorg/xutils/common/Callback$CacheCallback;

    move-object v11, v0

    invoke-interface {v11, v7}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result v10

    .line 246
    if-nez v10, :cond_b

    .line 249
    new-instance v11, Lorg/xutils/image/ImageLoader;

    invoke-direct {v11}, Lorg/xutils/image/ImageLoader;-><init>()V

    move-object/from16 v0, p3

    invoke-direct {v11, p0, p1, v6, v0}, Lorg/xutils/image/ImageLoader;->doLoad(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 260
    if-eqz v10, :cond_0

    if-eqz p3, :cond_0

    .line 262
    :try_start_1
    invoke-interface/range {p3 .. p3}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 263
    :catch_0
    move-exception v3

    .line 264
    .local v3, "ignored":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 216
    .end local v3    # "ignored":Ljava/lang/Throwable;
    .end local v7    # "memDrawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "trustMemCache":Z
    .restart local v8    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    instance-of v11, v8, Lorg/xutils/image/ReusableDrawable;

    if-eqz v11, :cond_5

    move-object v11, v8

    .line 217
    check-cast v11, Lorg/xutils/image/ReusableDrawable;

    invoke-interface {v11}, Lorg/xutils/image/ReusableDrawable;->getMemCacheKey()Lorg/xutils/image/MemCacheKey;

    move-result-object v9

    .line 218
    .local v9, "oldKey":Lorg/xutils/image/MemCacheKey;
    if-eqz v9, :cond_5

    invoke-virtual {v9, v4}, Lorg/xutils/image/MemCacheKey;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 219
    sget-object v11, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    invoke-virtual {v11, v4, v8}, Lorg/xutils/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 251
    .end local v8    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "oldKey":Lorg/xutils/image/MemCacheKey;
    .restart local v7    # "memDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "trustMemCache":Z
    :cond_a
    if-eqz p3, :cond_b

    .line 252
    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    :cond_b
    if-eqz v10, :cond_c

    if-eqz p3, :cond_c

    .line 262
    :try_start_3
    invoke-interface/range {p3 .. p3}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_c
    :goto_2
    move-object v11, v12

    .line 272
    goto/16 :goto_0

    .line 263
    :catch_1
    move-exception v3

    .line 264
    .restart local v3    # "ignored":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 254
    .end local v3    # "ignored":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    .line 255
    .local v2, "ex":Ljava/lang/Throwable;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    const/4 v10, 0x0

    .line 258
    new-instance v11, Lorg/xutils/image/ImageLoader;

    invoke-direct {v11}, Lorg/xutils/image/ImageLoader;-><init>()V

    move-object/from16 v0, p3

    invoke-direct {v11, p0, p1, v6, v0}, Lorg/xutils/image/ImageLoader;->doLoad(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    .line 260
    if-eqz v10, :cond_0

    if-eqz p3, :cond_0

    .line 262
    :try_start_5
    invoke-interface/range {p3 .. p3}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 263
    :catch_3
    move-exception v3

    .line 264
    .restart local v3    # "ignored":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 260
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v3    # "ignored":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    if-eqz v10, :cond_d

    if-eqz p3, :cond_d

    .line 262
    :try_start_6
    invoke-interface/range {p3 .. p3}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 265
    :cond_d
    :goto_3
    throw v11

    .line 263
    :catch_4
    move-exception v3

    .line 264
    .restart local v3    # "ignored":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v3}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 270
    .end local v3    # "ignored":Ljava/lang/Throwable;
    .end local v10    # "trustMemCache":Z
    :cond_e
    new-instance v11, Lorg/xutils/image/ImageLoader;

    invoke-direct {v11}, Lorg/xutils/image/ImageLoader;-><init>()V

    move-object/from16 v0, p3

    invoke-direct {v11, p0, p1, v6, v0}, Lorg/xutils/image/ImageLoader;->doLoad(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v11

    goto/16 :goto_0
.end method

.method private doLoad(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "options"    # Lorg/xutils/image/ImageOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .prologue
    .line 288
    .local p4, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<Landroid/graphics/drawable/Drawable;>;"
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    .line 289
    iput-object p3, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    .line 290
    new-instance v2, Lorg/xutils/image/MemCacheKey;

    invoke-direct {v2, p2, p3}, Lorg/xutils/image/MemCacheKey;-><init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    iput-object v2, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    .line 291
    iput-object p4, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    .line 292
    instance-of v2, p4, Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v2, :cond_0

    move-object v2, p4

    .line 293
    check-cast v2, Lorg/xutils/common/Callback$ProgressCallback;

    iput-object v2, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    .line 295
    :cond_0
    instance-of v2, p4, Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v2, :cond_1

    move-object v2, p4

    .line 296
    check-cast v2, Lorg/xutils/common/Callback$PrepareCallback;

    iput-object v2, p0, Lorg/xutils/image/ImageLoader;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    .line 298
    :cond_1
    instance-of v2, p4, Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v2, :cond_2

    .line 299
    check-cast p4, Lorg/xutils/common/Callback$CacheCallback;

    .end local p4    # "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<Landroid/graphics/drawable/Drawable;>;"
    iput-object p4, p0, Lorg/xutils/image/ImageLoader;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    .line 303
    :cond_2
    const/4 v0, 0x0

    .line 304
    .local v0, "loadingDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3}, Lorg/xutils/image/ImageOptions;->isForceLoadingDrawable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 305
    invoke-virtual {p3, p1}, Lorg/xutils/image/ImageOptions;->getLoadingDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 306
    invoke-virtual {p3}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 307
    new-instance v2, Lorg/xutils/image/AsyncDrawable;

    invoke-direct {v2, p0, v0}, Lorg/xutils/image/AsyncDrawable;-><init>(Lorg/xutils/image/ImageLoader;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    :goto_0
    invoke-static {p2, p3}, Lorg/xutils/image/ImageLoader;->createRequestParams(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object v1

    .line 315
    .local v1, "params":Lorg/xutils/http/RequestParams;
    instance-of v2, p1, Lorg/xutils/image/ImageLoader$FakeImageView;

    if-eqz v2, :cond_3

    .line 316
    sget-object v3, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    monitor-enter v3

    .line 317
    :try_start_0
    sget-object v2, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    check-cast p1, Lorg/xutils/image/ImageLoader$FakeImageView;

    .end local p1    # "view":Landroid/widget/ImageView;
    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_3
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/image/ImageLoader;->cancelable:Lorg/xutils/common/Callback$Cancelable;

    return-object v2

    .line 309
    .end local v1    # "params":Lorg/xutils/http/RequestParams;
    .restart local p1    # "view":Landroid/widget/ImageView;
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 310
    new-instance v2, Lorg/xutils/image/AsyncDrawable;

    invoke-direct {v2, p0, v0}, Lorg/xutils/image/AsyncDrawable;-><init>(Lorg/xutils/image/ImageLoader;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 318
    .end local p1    # "view":Landroid/widget/ImageView;
    .restart local v1    # "params":Lorg/xutils/http/RequestParams;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static doLoadDrawable(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "options"    # Lorg/xutils/image/ImageOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<Landroid/graphics/drawable/Drawable;>;"
    const/4 v3, 0x0

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    const-string v4, "url is null"

    invoke-static {v3, p1, v4, p2}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    .line 146
    :goto_0
    return-object v3

    .line 139
    :cond_0
    const/4 v1, 0x0

    .line 140
    .local v1, "fakeImageView":Lorg/xutils/image/ImageLoader$FakeImageView;
    sget-object v4, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    monitor-enter v4

    .line 141
    :try_start_0
    sget-object v3, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/xutils/image/ImageLoader$FakeImageView;

    move-object v1, v0

    .line 142
    if-nez v1, :cond_1

    .line 143
    new-instance v2, Lorg/xutils/image/ImageLoader$FakeImageView;

    invoke-direct {v2}, Lorg/xutils/image/ImageLoader$FakeImageView;-><init>()V

    .end local v1    # "fakeImageView":Lorg/xutils/image/ImageLoader$FakeImageView;
    .local v2, "fakeImageView":Lorg/xutils/image/ImageLoader$FakeImageView;
    move-object v1, v2

    .line 145
    .end local v2    # "fakeImageView":Lorg/xutils/image/ImageLoader$FakeImageView;
    .restart local v1    # "fakeImageView":Lorg/xutils/image/ImageLoader$FakeImageView;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {v1, p0, p1, p2}, Lorg/xutils/image/ImageLoader;->doBind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v3

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static doLoadFile(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "options"    # Lorg/xutils/image/ImageOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CacheCallback",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Lorg/xutils/common/Callback$Cancelable;"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lorg/xutils/common/Callback$CacheCallback;, "Lorg/xutils/common/Callback$CacheCallback<Ljava/io/File;>;"
    const/4 v1, 0x0

    .line 160
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string v2, "url is null"

    invoke-static {v1, p1, v2, p2}, Lorg/xutils/image/ImageLoader;->postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    .line 166
    :goto_0
    return-object v1

    .line 165
    :cond_0
    invoke-static {p0, p1}, Lorg/xutils/image/ImageLoader;->createRequestParams(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)Lorg/xutils/http/RequestParams;

    move-result-object v0

    .line 166
    .local v0, "params":Lorg/xutils/http/RequestParams;
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v1

    goto :goto_0
.end method

.method private static postArgsException(Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "options"    # Lorg/xutils/image/ImageOptions;
    .param p2, "exMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Lorg/xutils/image/ImageOptions;",
            "Ljava/lang/String;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p3, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<*>;"
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageLoader$3;

    invoke-direct {v1, p3, p0, p1, p2}, Lorg/xutils/image/ImageLoader$3;-><init>(Lorg/xutils/common/Callback$CommonCallback;Landroid/widget/ImageView;Lorg/xutils/image/ImageOptions;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    .line 589
    return-void
.end method

.method private setErrorDrawable4Callback()V
    .locals 3

    .prologue
    .line 545
    iget-object v2, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 546
    .local v1, "view":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 547
    iget-object v2, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v2, v1}, Lorg/xutils/image/ImageOptions;->getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 548
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v2}, Lorg/xutils/image/ImageOptions;->getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 549
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private setSuccessDrawable4Callback(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 525
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 526
    .local v0, "view":Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 527
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

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

    .line 532
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 534
    :cond_1
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/xutils/image/ImageAnimationHelper;->animationDisplay(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V

    .line 542
    :cond_2
    :goto_0
    return-void

    .line 536
    :cond_3
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->isFadeIn()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 537
    invoke-static {v0, p1}, Lorg/xutils/image/ImageAnimationHelper;->fadeInDisplay(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 539
    :cond_4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private validView4Callback(Z)Z
    .locals 10
    .param p1, "forceValidAsyncDrawable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 492
    iget-object v5, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 493
    .local v2, "view":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 495
    .local v0, "otherDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Lorg/xutils/image/AsyncDrawable;

    if-eqz v5, :cond_4

    .line 496
    check-cast v0, Lorg/xutils/image/AsyncDrawable;

    .end local v0    # "otherDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lorg/xutils/image/AsyncDrawable;->getImageLoader()Lorg/xutils/image/ImageLoader;

    move-result-object v1

    .line 497
    .local v1, "otherLoader":Lorg/xutils/image/ImageLoader;
    if-eqz v1, :cond_5

    .line 498
    if-ne v1, p0, :cond_2

    .line 499
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 500
    invoke-virtual {v1}, Lorg/xutils/image/ImageLoader;->cancel()V

    .line 521
    .end local v1    # "otherLoader":Lorg/xutils/image/ImageLoader;
    :cond_0
    :goto_0
    return v3

    .restart local v1    # "otherLoader":Lorg/xutils/image/ImageLoader;
    :cond_1
    move v3, v4

    .line 503
    goto :goto_0

    .line 506
    :cond_2
    iget-wide v6, p0, Lorg/xutils/image/ImageLoader;->seq:J

    iget-wide v8, v1, Lorg/xutils/image/ImageLoader;->seq:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    .line 507
    invoke-virtual {v1}, Lorg/xutils/image/ImageLoader;->cancel()V

    move v3, v4

    .line 508
    goto :goto_0

    .line 510
    :cond_3
    invoke-virtual {p0}, Lorg/xutils/image/ImageLoader;->cancel()V

    goto :goto_0

    .line 515
    .end local v1    # "otherLoader":Lorg/xutils/image/ImageLoader;
    .restart local v0    # "otherDrawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz p1, :cond_5

    .line 516
    invoke-virtual {p0}, Lorg/xutils/image/ImageLoader;->cancel()V

    goto :goto_0

    .end local v0    # "otherDrawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    move v3, v4

    .line 519
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 326
    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->cancelled:Z

    .line 327
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->cancelable:Lorg/xutils/common/Callback$Cancelable;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->cancelable:Lorg/xutils/common/Callback$Cancelable;

    invoke-interface {v0}, Lorg/xutils/common/Callback$Cancelable;->cancel()V

    .line 330
    :cond_0
    return-void
.end method

.method public getLoadType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 362
    sget-object v0, Lorg/xutils/image/ImageLoader;->loadType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-boolean v1, p0, Lorg/xutils/image/ImageLoader;->cancelled:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onCache(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 395
    invoke-direct {p0, v1}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    if-eqz p1, :cond_0

    .line 398
    iput-boolean v1, p0, Lorg/xutils/image/ImageLoader;->hasCache:Z

    .line 399
    invoke-direct {p0, p1}, Lorg/xutils/image/ImageLoader;->setSuccessDrawable4Callback(Landroid/graphics/drawable/Drawable;)V

    .line 400
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->cacheCallback:Lorg/xutils/common/Callback$CacheCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CacheCallback;->onCache(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 402
    :cond_2
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    move v0, v1

    .line 404
    goto :goto_0

    :cond_3
    move v0, v1

    .line 406
    goto :goto_0
.end method

.method public bridge synthetic onCache(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/xutils/image/ImageLoader;->onCache(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 1
    .param p1, "cex"    # Lorg/xutils/common/Callback$CancelledException;

    .prologue
    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "isOnCallback"    # Z

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 427
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    instance-of v0, p1, Lorg/xutils/ex/FileLockedException;

    if-eqz v0, :cond_2

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageFileLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    iget-object v1, v1, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageLoader$2;

    invoke-direct {v1, p0}, Lorg/xutils/image/ImageLoader$2;-><init>(Lorg/xutils/image/ImageLoader;)V

    const-wide/16 v2, 0xa

    invoke-interface {v0, v1, v2, v3}, Lorg/xutils/common/TaskController;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    iget-object v0, v0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 441
    invoke-direct {p0}, Lorg/xutils/image/ImageLoader;->setErrorDrawable4Callback()V

    .line 442
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1, p2}, Lorg/xutils/common/Callback$CommonCallback;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_0
.end method

.method public onFinished()V
    .locals 4

    .prologue
    .line 459
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/xutils/image/ImageLoader;->stopped:Z

    .line 460
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 461
    .local v0, "view":Landroid/widget/ImageView;
    instance-of v1, v0, Lorg/xutils/image/ImageLoader$FakeImageView;

    if-eqz v1, :cond_0

    .line 462
    sget-object v2, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    monitor-enter v2

    .line 463
    :try_start_0
    sget-object v1, Lorg/xutils/image/ImageLoader;->FAKE_IMG_MAP:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    iget-object v3, v3, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 464
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 469
    :cond_2
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v1}, Lorg/xutils/common/Callback$CommonCallback;->onFinished()V

    goto :goto_0
.end method

.method public onLoading(JJZ)V
    .locals 7
    .param p1, "total"    # J
    .param p3, "current"    # J
    .param p5, "isDownloading"    # Z

    .prologue
    .line 353
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lorg/xutils/common/Callback$ProgressCallback;->onLoading(JJZ)V

    .line 356
    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onStarted()V

    .line 349
    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 414
    iget-boolean v0, p0, Lorg/xutils/image/ImageLoader;->hasCache:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 422
    :cond_0
    :goto_1
    return-void

    .line 414
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 416
    :cond_2
    if-eqz p1, :cond_0

    .line 417
    invoke-direct {p0, p1}, Lorg/xutils/image/ImageLoader;->setSuccessDrawable4Callback(Landroid/graphics/drawable/Drawable;)V

    .line 418
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->callback:Lorg/xutils/common/Callback$CommonCallback;

    invoke-interface {v0, p1}, Lorg/xutils/common/Callback$CommonCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lorg/xutils/image/ImageLoader;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onWaiting()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/xutils/image/ImageLoader;->progressCallback:Lorg/xutils/common/Callback$ProgressCallback;

    invoke-interface {v0}, Lorg/xutils/common/Callback$ProgressCallback;->onWaiting()V

    .line 342
    :cond_0
    return-void
.end method

.method public prepare(Ljava/io/File;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "rawData"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 367
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/xutils/image/ImageLoader;->validView4Callback(Z)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v4

    .line 388
    :cond_0
    :goto_0
    return-object v2

    .line 370
    :cond_1
    const/4 v2, 0x0

    .line 371
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lorg/xutils/image/ImageLoader;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    if-eqz v3, :cond_2

    .line 372
    iget-object v3, p0, Lorg/xutils/image/ImageLoader;->prepareCallback:Lorg/xutils/common/Callback$PrepareCallback;

    invoke-interface {v3, p1}, Lorg/xutils/common/Callback$PrepareCallback;->prepare(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    .line 374
    :cond_2
    if-nez v2, :cond_3

    .line 375
    iget-object v3, p0, Lorg/xutils/image/ImageLoader;->options:Lorg/xutils/image/ImageOptions;

    invoke-static {p1, v3, p0}, Lorg/xutils/image/ImageDecoder;->decodeFileWithLock(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 377
    :cond_3
    if-eqz v2, :cond_0

    .line 378
    instance-of v3, v2, Lorg/xutils/image/ReusableDrawable;

    if-eqz v3, :cond_0

    .line 379
    move-object v0, v2

    check-cast v0, Lorg/xutils/image/ReusableDrawable;

    move-object v3, v0

    iget-object v5, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    invoke-interface {v3, v5}, Lorg/xutils/image/ReusableDrawable;->setMemCacheKey(Lorg/xutils/image/MemCacheKey;)V

    .line 380
    sget-object v3, Lorg/xutils/image/ImageLoader;->MEM_CACHE:Lorg/xutils/cache/LruCache;

    iget-object v5, p0, Lorg/xutils/image/ImageLoader;->key:Lorg/xutils/image/MemCacheKey;

    invoke-virtual {v3, v5, v2}, Lorg/xutils/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    :catch_0
    move-exception v1

    .line 385
    .local v1, "ex":Ljava/io/IOException;
    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 386
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v4

    .line 388
    goto :goto_0
.end method

.method public bridge synthetic prepare(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/xutils/image/ImageLoader;->prepare(Ljava/io/File;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
