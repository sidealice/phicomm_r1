.class public final Lorg/xutils/image/ImageManagerImpl;
.super Ljava/lang/Object;
.source "ImageManagerImpl.java"

# interfaces
.implements Lorg/xutils/ImageManager;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lorg/xutils/image/ImageManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageManagerImpl;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerInstance()V
    .locals 2

    .line 24
    sget-object v0, Lorg/xutils/image/ImageManagerImpl;->b:Lorg/xutils/image/ImageManagerImpl;

    if-nez v0, :cond_1

    .line 25
    sget-object v0, Lorg/xutils/image/ImageManagerImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lorg/xutils/image/ImageManagerImpl;->b:Lorg/xutils/image/ImageManagerImpl;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lorg/xutils/image/ImageManagerImpl;

    invoke-direct {v1}, Lorg/xutils/image/ImageManagerImpl;-><init>()V

    sput-object v1, Lorg/xutils/image/ImageManagerImpl;->b:Lorg/xutils/image/ImageManagerImpl;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lorg/xutils/image/ImageManagerImpl;->b:Lorg/xutils/image/ImageManagerImpl;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setImageManager(Lorg/xutils/ImageManager;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageManagerImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/xutils/image/ImageManagerImpl$1;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageManagerImpl$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/xutils/image/ImageManagerImpl$3;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/common/Callback$CommonCallback;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V
    .locals 2

    .line 47
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/image/ImageManagerImpl$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/xutils/image/ImageManagerImpl$2;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Lorg/xutils/image/ImageOptions;",
            "Lorg/xutils/common/Callback$CommonCallback<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v7, Lorg/xutils/image/ImageManagerImpl$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/xutils/image/ImageManagerImpl$4;-><init>(Lorg/xutils/image/ImageManagerImpl;Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)V

    invoke-interface {v0, v7}, Lorg/xutils/common/TaskController;->autoPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearCacheFiles()V
    .locals 0

    .line 92
    invoke-static {}, Lorg/xutils/image/a;->b()V

    .line 93
    invoke-static {}, Lorg/xutils/image/ImageDecoder;->a()V

    return-void
.end method

.method public clearMemCache()V
    .locals 0

    .line 87
    invoke-static {}, Lorg/xutils/image/a;->a()V

    return-void
.end method

.method public loadDrawable(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 0
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

    .line 77
    invoke-static {p1, p2, p3}, Lorg/xutils/image/a;->a(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public loadFile(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;
    .locals 0
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

    .line 82
    invoke-static {p1, p2, p3}, Lorg/xutils/image/a;->a(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;

    move-result-object p1

    return-object p1
.end method
