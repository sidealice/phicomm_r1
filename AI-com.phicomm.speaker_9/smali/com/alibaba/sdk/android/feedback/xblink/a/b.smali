.class public Lcom/alibaba/sdk/android/feedback/xblink/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/sdk/android/feedback/xblink/a/b;


# instance fields
.field private b:Landroid/util/LruCache;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x2800

    div-long/2addr v0, v2

    long-to-int v0, v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/a/c;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/a/c;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/a/b;I)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/a/b;->b:Landroid/util/LruCache;

    :cond_0
    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/sdk/android/feedback/xblink/a/b;
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/feedback/xblink/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/a/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/a/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/a/b;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/feedback/xblink/a/b;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/feedback/xblink/a/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/a/b;

    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/a/b;->a:Lcom/alibaba/sdk/android/feedback/xblink/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/a/b;->b:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/a/b;->b:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method
