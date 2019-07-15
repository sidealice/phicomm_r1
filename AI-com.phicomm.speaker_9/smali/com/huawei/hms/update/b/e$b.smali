.class Lcom/huawei/hms/update/b/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/update/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/update/b/e;

.field private final b:Lcom/huawei/hms/update/b/a/b;

.field private final c:Lcom/huawei/hms/update/b/a/d;

.field private final d:Lcom/huawei/hms/update/b/c;


# direct methods
.method constructor <init>(Lcom/huawei/hms/update/b/e;Lcom/huawei/hms/update/b/a/b;Lcom/huawei/hms/update/b/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/update/b/e$b;->a:Lcom/huawei/hms/update/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/huawei/hms/update/b/e$b;->b:Lcom/huawei/hms/update/b/a/b;

    iput-object p3, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    new-instance p1, Lcom/huawei/hms/update/b/c;

    invoke-direct {p1}, Lcom/huawei/hms/update/b/c;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/update/b/e$b;)Lcom/huawei/hms/update/b/c;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    return-object p0
.end method

.method private a(Ljava/io/RandomAccessFile;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lcom/huawei/hms/update/b/f;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/update/b/f;-><init>(Lcom/huawei/hms/update/b/e$b;Ljava/io/RandomAccessFile;)V

    return-object v0
.end method

.method static synthetic b(Lcom/huawei/hms/update/b/e$b;)Lcom/huawei/hms/update/b/a/d;
    .locals 0

    iget-object p0, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    return-object p0
.end method


# virtual methods
.method a(III)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->b:Lcom/huawei/hms/update/b/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->b:Lcom/huawei/hms/update/b/a/b;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/update/b/a/b;->a(III)V

    :cond_0
    return-void
.end method

.method a(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/update/c/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget v0, v0, Lcom/huawei/hms/update/b/a/d;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v0, v0, Lcom/huawei/hms/update/b/a/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v0, v0, Lcom/huawei/hms/update/b/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rwd"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget v4, v4, Lcom/huawei/hms/update/b/a/d;->c:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-direct {p0, v3}, Lcom/huawei/hms/update/b/e$b;->a(Ljava/io/RandomAccessFile;)Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".dr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/huawei/hms/update/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    iget-object v5, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v5, v5, Lcom/huawei/hms/update/b/a/d;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget v6, v6, Lcom/huawei/hms/update/b/a/d;->c:I

    iget-object v7, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v7, v7, Lcom/huawei/hms/update/b/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Lcom/huawei/hms/update/b/c;->b(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    invoke-virtual {v0}, Lcom/huawei/hms/update/b/c;->b()I

    move-result v0

    iget-object v5, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    invoke-virtual {v5}, Lcom/huawei/hms/update/b/c;->a()I

    move-result v5

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v0, v0, Lcom/huawei/hms/update/b/a/d;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/huawei/hms/update/b/e;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    iget-object v5, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v5, v5, Lcom/huawei/hms/update/b/a/d;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget v6, v6, Lcom/huawei/hms/update/b/a/d;->c:I

    iget-object v7, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v7, v7, Lcom/huawei/hms/update/b/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Lcom/huawei/hms/update/b/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->a:Lcom/huawei/hms/update/b/e;

    invoke-static {v0}, Lcom/huawei/hms/update/b/e;->b(Lcom/huawei/hms/update/b/e;)Lcom/huawei/hms/update/c/d;

    move-result-object v0

    iget-object v5, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v5, v5, Lcom/huawei/hms/update/b/a/d;->b:Ljava/lang/String;

    :goto_0
    invoke-interface {v0, v5, v4}, Lcom/huawei/hms/update/c/d;->a(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2, v2, v2}, Lcom/huawei/hms/update/b/e$b;->a(III)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object p1, p0, Lcom/huawei/hms/update/b/e$b;->a:Lcom/huawei/hms/update/b/e;

    invoke-static {p1}, Lcom/huawei/hms/update/b/e;->b(Lcom/huawei/hms/update/b/e;)Lcom/huawei/hms/update/c/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/update/c/d;->a()V

    invoke-static {v4}, Lcom/huawei/hms/a/c;->a(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/huawei/hms/a/c;->a(Ljava/io/Closeable;)V

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    invoke-virtual {v0}, Lcom/huawei/hms/update/b/c;->b()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->a:Lcom/huawei/hms/update/b/e;

    invoke-static {v0}, Lcom/huawei/hms/update/b/e;->b(Lcom/huawei/hms/update/b/e;)Lcom/huawei/hms/update/c/d;

    move-result-object v0

    iget-object v5, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v5, v5, Lcom/huawei/hms/update/b/a/d;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    invoke-virtual {v6}, Lcom/huawei/hms/update/b/c;->b()I

    move-result v6

    iget-object v7, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    invoke-virtual {v7}, Lcom/huawei/hms/update/b/c;->a()I

    move-result v7

    invoke-interface {v0, v5, v4, v6, v7}, Lcom/huawei/hms/update/c/d;->a(Ljava/lang/String;Ljava/io/OutputStream;II)I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->d:Lcom/huawei/hms/update/b/c;

    iget-object v5, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v5, v5, Lcom/huawei/hms/update/b/a/d;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget v6, v6, Lcom/huawei/hms/update/b/a/d;->c:I

    iget-object v7, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v7, v7, Lcom/huawei/hms/update/b/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Lcom/huawei/hms/update/b/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->a:Lcom/huawei/hms/update/b/e;

    invoke-static {v0}, Lcom/huawei/hms/update/b/e;->b(Lcom/huawei/hms/update/b/e;)Lcom/huawei/hms/update/c/d;

    move-result-object v0

    iget-object v5, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v5, v5, Lcom/huawei/hms/update/b/a/d;->b:Ljava/lang/String;

    goto :goto_0

    :goto_2
    const-string v5, "OtaUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download the package of HMS , HTTP code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/hms/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_4

    const/16 v5, 0xce

    if-eq v0, v5, :cond_4

    invoke-virtual {p0, v1, v2, v2}, Lcom/huawei/hms/update/b/e$b;->a(III)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->c:Lcom/huawei/hms/update/b/a/d;

    iget-object v0, v0, Lcom/huawei/hms/update/b/a/d;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/huawei/hms/update/b/e;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_5

    const/16 p1, 0xcb

    invoke-virtual {p0, p1, v2, v2}, Lcom/huawei/hms/update/b/e$b;->a(III)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0, v2, v2, v2}, Lcom/huawei/hms/update/b/e$b;->a(III)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lcom/huawei/hms/update/b/e$b;->a:Lcom/huawei/hms/update/b/e;

    invoke-static {p1}, Lcom/huawei/hms/update/b/e;->b(Lcom/huawei/hms/update/b/e;)Lcom/huawei/hms/update/c/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/update/c/d;->a()V

    invoke-static {v4}, Lcom/huawei/hms/a/c;->a(Ljava/io/OutputStream;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v0, v4

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v3, v0

    :goto_3
    :try_start_4
    const-string v4, "OtaUpdate"

    const-string v5, "Failed to download HMS-app."

    invoke-static {v4, v5, p1}, Lcom/huawei/hms/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2, v2}, Lcom/huawei/hms/update/b/e$b;->a(III)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p1, p0, Lcom/huawei/hms/update/b/e$b;->a:Lcom/huawei/hms/update/b/e;

    invoke-static {p1}, Lcom/huawei/hms/update/b/e;->b(Lcom/huawei/hms/update/b/e;)Lcom/huawei/hms/update/c/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/update/c/d;->a()V

    invoke-static {v0}, Lcom/huawei/hms/a/c;->a(Ljava/io/OutputStream;)V

    :goto_4
    invoke-static {v3}, Lcom/huawei/hms/a/c;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p1

    move-object v4, v0

    :goto_5
    iget-object v0, p0, Lcom/huawei/hms/update/b/e$b;->a:Lcom/huawei/hms/update/b/e;

    invoke-static {v0}, Lcom/huawei/hms/update/b/e;->b(Lcom/huawei/hms/update/b/e;)Lcom/huawei/hms/update/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/huawei/hms/update/c/d;->a()V

    invoke-static {v4}, Lcom/huawei/hms/a/c;->a(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/huawei/hms/a/c;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_6
    :goto_6
    invoke-virtual {p0, v1, v2, v2}, Lcom/huawei/hms/update/b/e$b;->a(III)V

    return-void
.end method
