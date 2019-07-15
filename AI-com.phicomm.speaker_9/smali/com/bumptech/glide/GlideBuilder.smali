.class public Lcom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/bumptech/glide/load/engine/b;

.field private c:Lcom/bumptech/glide/load/engine/a/c;

.field private d:Lcom/bumptech/glide/load/engine/cache/g;

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lcom/bumptech/glide/load/DecodeFormat;

.field private h:Lcom/bumptech/glide/load/engine/cache/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->g:Lcom/bumptech/glide/load/DecodeFormat;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/cache/a$a;)Lcom/bumptech/glide/GlideBuilder;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/bumptech/glide/GlideBuilder;->h:Lcom/bumptech/glide/load/engine/cache/a$a;

    return-object p0
.end method

.method a()Lcom/bumptech/glide/g;
    .locals 7

    .line 169
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->e:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 171
    new-instance v2, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->e:Ljava/util/concurrent/ExecutorService;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->f:Ljava/util/concurrent/ExecutorService;

    .line 177
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Landroid/content/Context;)V

    .line 178
    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/a/c;

    if-nez v1, :cond_3

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 180
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->b()I

    move-result v1

    .line 181
    new-instance v2, Lcom/bumptech/glide/load/engine/a/f;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/engine/a/f;-><init>(I)V

    iput-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/a/c;

    goto :goto_0

    .line 183
    :cond_2
    new-instance v1, Lcom/bumptech/glide/load/engine/a/d;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/a/d;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/a/c;

    .line 187
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/cache/g;

    if-nez v1, :cond_4

    .line 188
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->a()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/engine/cache/f;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/cache/g;

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->h:Lcom/bumptech/glide/load/engine/cache/a$a;

    if-nez v0, :cond_5

    .line 192
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->h:Lcom/bumptech/glide/load/engine/cache/a$a;

    .line 195
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->b:Lcom/bumptech/glide/load/engine/b;

    if-nez v0, :cond_6

    .line 196
    new-instance v0, Lcom/bumptech/glide/load/engine/b;

    iget-object v1, p0, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/cache/g;

    iget-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->h:Lcom/bumptech/glide/load/engine/cache/a$a;

    iget-object v3, p0, Lcom/bumptech/glide/GlideBuilder;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/bumptech/glide/GlideBuilder;->e:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/b;-><init>(Lcom/bumptech/glide/load/engine/cache/g;Lcom/bumptech/glide/load/engine/cache/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->b:Lcom/bumptech/glide/load/engine/b;

    .line 199
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->g:Lcom/bumptech/glide/load/DecodeFormat;

    if-nez v0, :cond_7

    .line 200
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    iput-object v0, p0, Lcom/bumptech/glide/GlideBuilder;->g:Lcom/bumptech/glide/load/DecodeFormat;

    .line 203
    :cond_7
    new-instance v0, Lcom/bumptech/glide/g;

    iget-object v2, p0, Lcom/bumptech/glide/GlideBuilder;->b:Lcom/bumptech/glide/load/engine/b;

    iget-object v3, p0, Lcom/bumptech/glide/GlideBuilder;->d:Lcom/bumptech/glide/load/engine/cache/g;

    iget-object v4, p0, Lcom/bumptech/glide/GlideBuilder;->c:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v5, p0, Lcom/bumptech/glide/GlideBuilder;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/bumptech/glide/GlideBuilder;->g:Lcom/bumptech/glide/load/DecodeFormat;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/g;-><init>(Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/engine/cache/g;Lcom/bumptech/glide/load/engine/a/c;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V

    return-object v0
.end method
