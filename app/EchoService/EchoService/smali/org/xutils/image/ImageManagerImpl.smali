.class public final Lorg/xutils/image/ImageManagerImpl;
.super Ljava/lang/Object;
.source "ImageManagerImpl.java"

# interfaces
.implements Lorg/xutils/ImageManager;


# static fields
.field private static volatile instance:Lorg/xutils/image/ImageManagerImpl;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageManagerImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static registerInstance()V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lorg/xutils/image/ImageManagerImpl;->instance:Lorg/xutils/image/ImageManagerImpl;

    if-nez v0, :cond_1

    .line 25
    sget-object v1, Lorg/xutils/image/ImageManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lorg/xutils/image/ImageManagerImpl;->instance:Lorg/xutils/image/ImageManagerImpl;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lorg/xutils/image/ImageManagerImpl;

    invoke-direct {v0}, Lorg/xutils/image/ImageManagerImpl;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageManagerImpl;->instance:Lorg/xutils/image/ImageManagerImpl;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lorg/xutils/image/ImageManagerImpl;->instance:Lorg/xutils/image/ImageManagerImpl;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setImageManager(Lorg/xutils/ImageManager;)V

    .line 32
    return-void

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public bind(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageManagerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/xutils/image/ImageManagerImpl$1;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/common/Callback$CommonCallback",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<Landroid/graphics/drawable/Drawable;>;"
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageManagerImpl$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/xutils/image/ImageManagerImpl$3;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "options"    # Lorg/xutils/image/ImageOptions;

    .prologue
    .line 47
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageManagerImpl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/xutils/image/ImageManagerImpl$2;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 7
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p4, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<Landroid/graphics/drawable/Drawable;>;"
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v6

    new-instance v0, Lorg/xutils/image/ImageManagerImpl$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xutils/image/ImageManagerImpl$4;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)V

    invoke-interface {v6, v0}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    .line 73
    return-void
.end method

.method public clearCacheFiles()V
    .locals 0

    .prologue
    .line 92
    invoke-static {}, Lorg/xutils/image/ImageLoader;->clearCacheFiles()V

    .line 93
    invoke-static {}, Lorg/xutils/image/ImageDecoder;->clearCacheFiles()V

    .line 94
    return-void
.end method

.method public clearMemCache()V
    .locals 0

    .prologue
    .line 87
    invoke-static {}, Lorg/xutils/image/ImageLoader;->clearMemCache()V

    .line 88
    return-void
.end method

.method public loadDrawable(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "options"    # Lorg/xutils/image/ImageOptions;
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
    .line 77
    .local p3, "callback":Lorg/xutils/common/Callback$CommonCallback;, "Lorg/xutils/common/Callback$CommonCallback<Landroid/graphics/drawable/Drawable;>;"
    invoke-static {p1, p2, p3}, Lorg/xutils/image/ImageLoader;->doLoadDrawable(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public loadFile(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "options"    # Lorg/xutils/image/ImageOptions;
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
    .line 82
    .local p3, "callback":Lorg/xutils/common/Callback$CacheCallback;, "Lorg/xutils/common/Callback$CacheCallback<Ljava/io/File;>;"
    invoke-static {p1, p2, p3}, Lorg/xutils/image/ImageLoader;->doLoadFile(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object v0

    return-object v0
.end method
