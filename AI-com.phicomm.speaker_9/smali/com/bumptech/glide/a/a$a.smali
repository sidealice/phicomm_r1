.class public final Lcom/bumptech/glide/a/a$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/a/a;

.field private final b:Lcom/bumptech/glide/a/a$b;

.field private final c:[Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$b;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    .line 712
    invoke-static {p2}, Lcom/bumptech/glide/a/a$b;->d(Lcom/bumptech/glide/a/a$b;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/a/a;->e(Lcom/bumptech/glide/a/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/a/a$a;->c:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$b;Lcom/bumptech/glide/a/a$1;)V
    .locals 0

    .line 705
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/a/a$a;-><init>(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/a/a$a;)Lcom/bumptech/glide/a/a$b;
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    return-object p0
.end method

.method static synthetic b(Lcom/bumptech/glide/a/a$a;)[Z
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/bumptech/glide/a/a$a;->c:[Z

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    monitor-enter v0

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    invoke-static {v1}, Lcom/bumptech/glide/a/a$b;->a(Lcom/bumptech/glide/a/a$b;)Lcom/bumptech/glide/a/a$a;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 747
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    invoke-static {v1}, Lcom/bumptech/glide/a/a$b;->d(Lcom/bumptech/glide/a/a$b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 750
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 752
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->b:Lcom/bumptech/glide/a/a$b;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/a/a$b;->b(I)Ljava/io/File;

    move-result-object p1

    .line 753
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    invoke-static {v1}, Lcom/bumptech/glide/a/a;->f(Lcom/bumptech/glide/a/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 754
    iget-object v1, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    invoke-static {v1}, Lcom/bumptech/glide/a/a;->f(Lcom/bumptech/glide/a/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 756
    :cond_2
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 757
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/a/a;->a(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$a;Z)V

    .line 782
    iput-boolean v1, p0, Lcom/bumptech/glide/a/a$a;->d:Z

    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lcom/bumptech/glide/a/a$a;->a:Lcom/bumptech/glide/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/a/a;->a(Lcom/bumptech/glide/a/a;Lcom/bumptech/glide/a/a$a;Z)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 794
    iget-boolean v0, p0, Lcom/bumptech/glide/a/a$a;->d:Z

    if-nez v0, :cond_0

    .line 796
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/a/a$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
