.class public final Lcom/bumptech/glide/h/a;
.super Ljava/lang/Object;
.source "ByteArrayPool.java"


# static fields
.field private static final b:Lcom/bumptech/glide/h/a;


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/bumptech/glide/h/a;

    invoke-direct {v0}, Lcom/bumptech/glide/h/a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/h/a;->b:Lcom/bumptech/glide/h/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Lcom/bumptech/glide/h/h;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/h/a;->a:Ljava/util/Queue;

    return-void
.end method

.method public static a()Lcom/bumptech/glide/h/a;
    .locals 1

    .line 25
    sget-object v0, Lcom/bumptech/glide/h/a;->b:Lcom/bumptech/glide/h/a;

    return-object v0
.end method


# virtual methods
.method public a([B)Z
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x10000

    .line 64
    array-length v2, p1

    if-eq v2, v1, :cond_0

    return v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/h/a;->a:Ljava/util/Queue;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/h/a;->a:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    const/4 v0, 0x1

    .line 72
    iget-object v2, p0, Lcom/bumptech/glide/h/a;->a:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()[B
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/h/a;->a:Ljava/util/Queue;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/h/a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/high16 v0, 0x10000

    .line 49
    new-array v1, v0, [B

    const-string v0, "ByteArrayPool"

    const/4 v2, 0x3

    .line 50
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ByteArrayPool"

    const-string v2, "Created temp bytes"

    .line 51
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
