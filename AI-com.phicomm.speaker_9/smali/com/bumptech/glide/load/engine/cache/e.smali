.class public Lcom/bumptech/glide/load/engine/cache/e;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/a;


# static fields
.field private static a:Lcom/bumptech/glide/load/engine/cache/e;


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/cache/c;

.field private final c:Lcom/bumptech/glide/load/engine/cache/h;

.field private final d:Ljava/io/File;

.field private final e:I

.field private f:Lcom/bumptech/glide/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->b:Lcom/bumptech/glide/load/engine/cache/c;

    .line 52
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/e;->d:Ljava/io/File;

    .line 53
    iput p2, p0, Lcom/bumptech/glide/load/engine/cache/e;->e:I

    .line 54
    new-instance p1, Lcom/bumptech/glide/load/engine/cache/h;

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/cache/h;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/e;->c:Lcom/bumptech/glide/load/engine/cache/h;

    return-void
.end method

.method private declared-synchronized a()Lcom/bumptech/glide/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->f:Lcom/bumptech/glide/a/a;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->d:Ljava/io/File;

    iget v1, p0, Lcom/bumptech/glide/load/engine/cache/e;->e:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lcom/bumptech/glide/a/a;->a(Ljava/io/File;IIJ)Lcom/bumptech/glide/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->f:Lcom/bumptech/glide/a/a;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->f:Lcom/bumptech/glide/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized a(Ljava/io/File;I)Lcom/bumptech/glide/load/engine/cache/a;
    .locals 2

    const-class v0, Lcom/bumptech/glide/load/engine/cache/e;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/engine/cache/e;->a:Lcom/bumptech/glide/load/engine/cache/e;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/e;

    invoke-direct {v1, p0, p1}, Lcom/bumptech/glide/load/engine/cache/e;-><init>(Ljava/io/File;I)V

    sput-object v1, Lcom/bumptech/glide/load/engine/cache/e;->a:Lcom/bumptech/glide/load/engine/cache/e;

    .line 48
    :cond_0
    sget-object p0, Lcom/bumptech/glide/load/engine/cache/e;->a:Lcom/bumptech/glide/load/engine/cache/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;)Ljava/io/File;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->c:Lcom/bumptech/glide/load/engine/cache/h;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/h;->a(Lcom/bumptech/glide/load/b;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/a/a;->a(Ljava/lang/String;)Lcom/bumptech/glide/a/a$c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/a/a$c;->a(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    .line 81
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to get from disk cache"

    .line 82
    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/cache/a$b;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->c:Lcom/bumptech/glide/load/engine/cache/h;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/h;->a(Lcom/bumptech/glide/load/b;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/e;->b:Lcom/bumptech/glide/load/engine/cache/c;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/cache/c;->a(Lcom/bumptech/glide/load/b;)V

    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/a/a;->b(Ljava/lang/String;)Lcom/bumptech/glide/a/a$a;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 97
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a/a$a;->a(I)Ljava/io/File;

    move-result-object v1

    .line 98
    invoke-interface {p2, v1}, Lcom/bumptech/glide/load/engine/cache/a$b;->a(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/bumptech/glide/a/a$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/bumptech/glide/a/a$a;->c()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {v0}, Lcom/bumptech/glide/a/a$a;->c()V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/cache/e;->b:Lcom/bumptech/glide/load/engine/cache/c;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/engine/cache/c;->b(Lcom/bumptech/glide/load/b;)V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_3
    const-string v0, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DiskLruCacheWrapper"

    const-string v1, "Unable to put to disk cache"

    .line 107
    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    .line 110
    :goto_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->b:Lcom/bumptech/glide/load/engine/cache/c;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/c;->b(Lcom/bumptech/glide/load/b;)V

    throw p2
.end method

.method public b(Lcom/bumptech/glide/load/b;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/e;->c:Lcom/bumptech/glide/load/engine/cache/h;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/cache/h;->a(Lcom/bumptech/glide/load/b;)Ljava/lang/String;

    move-result-object p1

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/cache/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/a/a;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DiskLruCacheWrapper"

    const/4 v1, 0x5

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DiskLruCacheWrapper"

    const-string v1, "Unable to delete from disk cache"

    .line 121
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
