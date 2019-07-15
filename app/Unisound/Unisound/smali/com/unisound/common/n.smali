.class public final Lcom/unisound/common/n;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/unisound/common/l;

.field private final b:Lcom/unisound/common/p;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/unisound/common/l;Lcom/unisound/common/p;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/n;->a:Lcom/unisound/common/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unisound/common/n;->b:Lcom/unisound/common/p;

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/common/l;Lcom/unisound/common/p;Lcom/unisound/common/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/common/n;-><init>(Lcom/unisound/common/l;Lcom/unisound/common/p;)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/common/n;)Lcom/unisound/common/p;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/n;->b:Lcom/unisound/common/p;

    return-object v0
.end method

.method static synthetic a(Lcom/unisound/common/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/common/n;->c:Z

    return p1
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 3

    iget-object v1, p0, Lcom/unisound/common/n;->a:Lcom/unisound/common/l;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/common/n;->b:Lcom/unisound/common/p;

    invoke-static {v0}, Lcom/unisound/common/p;->a(Lcom/unisound/common/p;)Lcom/unisound/common/n;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/unisound/common/n;->b:Lcom/unisound/common/p;

    invoke-static {v0}, Lcom/unisound/common/p;->d(Lcom/unisound/common/p;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/unisound/common/n;->b:Lcom/unisound/common/p;

    invoke-virtual {v2, p1}, Lcom/unisound/common/p;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/unisound/common/n;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/n;->a:Lcom/unisound/common/l;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/unisound/common/l;->a(Lcom/unisound/common/l;Lcom/unisound/common/n;Z)V

    iget-object v0, p0, Lcom/unisound/common/n;->a:Lcom/unisound/common/l;

    iget-object v1, p0, Lcom/unisound/common/n;->b:Lcom/unisound/common/p;

    invoke-static {v1}, Lcom/unisound/common/p;->c(Lcom/unisound/common/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/l;->c(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisound/common/n;->a:Lcom/unisound/common/l;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/unisound/common/l;->a(Lcom/unisound/common/l;Lcom/unisound/common/n;Z)V

    goto :goto_0
.end method

.method public a(ILjava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/unisound/common/n;->c(I)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {}, Lcom/unisound/common/l;->h()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/unisound/common/l;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/unisound/common/l;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unisound/common/n;->a(I)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/unisound/common/l;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/common/n;->a:Lcom/unisound/common/l;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/unisound/common/l;->a(Lcom/unisound/common/l;Lcom/unisound/common/n;Z)V

    return-void
.end method

.method public c(I)Ljava/io/OutputStream;
    .locals 4

    iget-object v1, p0, Lcom/unisound/common/n;->a:Lcom/unisound/common/l;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unisound/common/n;->b:Lcom/unisound/common/p;

    invoke-static {v0}, Lcom/unisound/common/p;->a(Lcom/unisound/common/p;)Lcom/unisound/common/n;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/unisound/common/o;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/unisound/common/n;->b:Lcom/unisound/common/p;

    invoke-virtual {v3, p1}, Lcom/unisound/common/p;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/unisound/common/o;-><init>(Lcom/unisound/common/n;Ljava/io/OutputStream;Lcom/unisound/common/m;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method
