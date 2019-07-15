.class public Lcn/kuwo/autosdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:Ljava/lang/String;

.field static b:J

.field static final c:Ljava/util/concurrent/atomic/AtomicLong;

.field static d:Ljava/net/Proxy;

.field public static e:I


# instance fields
.field f:Lcn/kuwo/autosdk/d;

.field g:Ljava/lang/String;

.field h:Ljava/util/Map;

.field i:Z

.field j:[B

.field k:Ljava/lang/String;

.field l:I

.field m:J

.field n:Z

.field o:Ljava/net/Proxy;

.field volatile p:Z

.field volatile q:Z

.field r:I

.field s:J

.field t:Ljava/net/HttpURLConnection;

.field u:Ljava/io/InputStream;

.field v:Ljava/io/OutputStream;

.field w:Ljava/io/ByteArrayOutputStream;

.field x:Lcn/kuwo/autosdk/f;

.field y:Landroid/os/Handler;

.field z:Lcn/kuwo/autosdk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "HttpSession"

    sput-object v0, Lcn/kuwo/autosdk/b;->a:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcn/kuwo/autosdk/b;->b:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    sput-object v0, Lcn/kuwo/autosdk/b;->d:Ljava/net/Proxy;

    const/16 v0, 0x2000

    sput v0, Lcn/kuwo/autosdk/b;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/kuwo/autosdk/d;

    invoke-direct {v0, p0}, Lcn/kuwo/autosdk/d;-><init>(Lcn/kuwo/autosdk/b;)V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->f:Lcn/kuwo/autosdk/d;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/b;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->y:Landroid/os/Handler;

    new-instance v0, Lcn/kuwo/autosdk/a;

    invoke-direct {v0}, Lcn/kuwo/autosdk/a;-><init>()V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/autosdk/b;->s:J

    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/kuwo/autosdk/a;
    .locals 1

    iput-object p1, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->d()Lcn/kuwo/autosdk/a;

    move-result-object v0

    return-object v0
.end method

.method a(II[BI)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->f:Lcn/kuwo/autosdk/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/kuwo/autosdk/d;->a(II[BI)Lcn/kuwo/autosdk/d;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->y:Landroid/os/Handler;

    invoke-direct {p0, v1, v0}, Lcn/kuwo/autosdk/b;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcn/kuwo/autosdk/b;->m:J

    return-void
.end method

.method a(Lcn/kuwo/autosdk/e;I)V
    .locals 2

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Lcn/kuwo/autosdk/c;

    invoke-direct {v0, p0, p1, p2}, Lcn/kuwo/autosdk/c;-><init>(Lcn/kuwo/autosdk/b;Lcn/kuwo/autosdk/e;I)V

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->y:Landroid/os/Handler;

    invoke-direct {p0, v1, v0}, Lcn/kuwo/autosdk/b;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcn/kuwo/autosdk/b;->e:I

    if-gt v2, v3, :cond_0

    iget-boolean v2, p0, Lcn/kuwo/autosdk/b;->i:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->j:[B

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/kuwo/autosdk/b;->s:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcn/kuwo/autosdk/b;->r:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/kuwo/autosdk/b;->r:I

    iget v2, p0, Lcn/kuwo/autosdk/b;->r:I

    if-ne v1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method a([BII)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    const-string v4, "rw"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, p3

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2
.end method

.method b()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HTTP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->o:Ljava/net/Proxy;

    if-nez v0, :cond_4

    sget-object v0, Lcn/kuwo/autosdk/b;->d:Ljava/net/Proxy;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-wide v0, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v0, v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v0, v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    iget-wide v4, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_2
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->i:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->j:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->v:Ljava/io/OutputStream;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->v:Ljava/io/OutputStream;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->j:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->v:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    move v0, v3

    :goto_3
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "url error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    move v0, v2

    goto :goto_3

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->o:Ljava/net/Proxy;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "connect error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    move v0, v2

    goto :goto_3

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    :try_start_6
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "connect timeout"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    move v0, v2

    goto :goto_3

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "post write failed"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move v0, v2

    goto :goto_3

    :cond_8
    :try_start_7
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v6, v1, Lcn/kuwo/autosdk/a;->e:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcn/kuwo/autosdk/a;->m:J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_8
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "connect failed"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move v0, v2

    goto :goto_3
.end method

.method declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->v:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->v:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method d()Lcn/kuwo/autosdk/a;
    .locals 9

    const/4 v1, -0x1

    const/4 v4, -0x3

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->k:Ljava/lang/String;

    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iput v4, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->n:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sget-wide v2, Lcn/kuwo/autosdk/b;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "flow limit"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x4

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iput v4, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v1, 0xce

    if-ne v0, v1, :cond_b

    :cond_5
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    iget-wide v2, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v2, v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    iget-wide v4, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_6
    :goto_1
    iget-object v2, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;

    const/16 v3, 0x1000

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_7

    iget-boolean v3, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v3, :cond_8

    :cond_7
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x3

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x5

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto/16 :goto_0

    :cond_8
    :try_start_4
    iget-boolean v3, p0, Lcn/kuwo/autosdk/b;->n:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v4, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :try_start_5
    iget-object v3, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x5

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "write data failed"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto/16 :goto_0

    :cond_a
    :try_start_7
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->e:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->m:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->n:J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->c:[B
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/autosdk/a;->a:Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    :goto_2
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_a
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x5

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto/16 :goto_0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "resqonse code error "

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_c
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x1

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "read data failed"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_d
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x1

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    throw v0
.end method

.method e()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v6, p0, Lcn/kuwo/autosdk/b;->l:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    const-string v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v3, p0, Lcn/kuwo/autosdk/b;->l:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_1
    iget v1, p0, Lcn/kuwo/autosdk/b;->l:I

    if-lez v1, :cond_3

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/kuwo/autosdk/b;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {p0, v1, v2}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_4
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_6
    throw v0

    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v2, p0, Lcn/kuwo/autosdk/b;->l:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_a

    :try_start_7
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    const-string v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-wide/16 v4, 0x0

    :try_start_8
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_7
    :goto_7
    iput v1, p0, Lcn/kuwo/autosdk/b;->l:I

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_8
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :cond_8
    :goto_9
    move v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_a
    if-eqz v3, :cond_9

    :try_start_c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_9
    :goto_b
    throw v0

    :cond_a
    iget v1, p0, Lcn/kuwo/autosdk/b;->l:I

    if-lez v1, :cond_3

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/kuwo/autosdk/b;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto/16 :goto_1

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v3, v2

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_a
    move-exception v0

    goto :goto_3
.end method

.method f()I
    .locals 5

    const/4 v1, -0x2

    :try_start_0
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v2, Lcn/kuwo/autosdk/a;->b:I

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/autosdk/a;->l:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response code error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v3, v3, Lcn/kuwo/autosdk/a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    if-nez v2, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const-string v2, "identity"

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    const-string v4, "Accept-Encoding"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v2, "get response code exception"

    iput-object v2, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v2, "unknown"

    iput-object v2, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method g()Z
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    iget-wide v2, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/b;->q:Z

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->f:J

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-virtual {v0}, Lcn/kuwo/autosdk/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/kuwo/autosdk/e;->c:Lcn/kuwo/autosdk/e;

    invoke-virtual {p0, v0, v6}, Lcn/kuwo/autosdk/b;->a(Lcn/kuwo/autosdk/e;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-nez v0, :cond_0

    sget-object v0, Lcn/kuwo/autosdk/e;->b:Lcn/kuwo/autosdk/e;

    invoke-virtual {p0, v0, v6}, Lcn/kuwo/autosdk/b;->a(Lcn/kuwo/autosdk/e;I)V

    goto :goto_0
.end method

.method public run()V
    .locals 11

    const/4 v0, 0x0

    const/4 v10, -0x1

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->e:J

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/autosdk/a;->k:Ljava/lang/String;

    iget-boolean v1, p0, Lcn/kuwo/autosdk/b;->n:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sget-wide v4, Lcn/kuwo/autosdk/b;->b:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "flow limit"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->e()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "file error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->b()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->f()I

    move-result v1

    const/4 v2, -0x2

    if-ne v2, v1, :cond_4

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_0

    :cond_4
    if-ne v1, v10, :cond_5

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-nez v2, :cond_6

    :cond_5
    sget-object v2, Lcn/kuwo/autosdk/e;->a:Lcn/kuwo/autosdk/e;

    iget v3, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcn/kuwo/autosdk/b;->a(Lcn/kuwo/autosdk/e;I)V

    :cond_6
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4000

    :try_start_1
    new-array v2, v2, [B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "read data failed"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->g()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :cond_8
    :try_start_2
    iget-object v3, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    if-gez v3, :cond_b

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-eqz v2, :cond_e

    if-eq v0, v1, :cond_a

    if-eq v1, v10, :cond_a

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "ContentLength error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "read error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    :cond_9
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "io error (file lenght error) "

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->g()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :cond_c
    if-nez v3, :cond_f

    :cond_d
    :goto_1
    iget-boolean v3, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v3, :cond_8

    :cond_e
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :cond_f
    iget-boolean v4, p0, Lcn/kuwo/autosdk/b;->n:Z

    if-eqz v4, :cond_10

    sget-object v4, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v5, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_10
    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-nez v4, :cond_11

    :try_start_3
    iget-object v4, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    :cond_11
    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-eqz v4, :cond_12

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v5, v0

    int-to-long v6, v5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_12

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "io error (check file length error)"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "out of memory error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :cond_12
    iget v4, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4}, Lcn/kuwo/autosdk/b;->a([BII)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "write file error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :cond_13
    add-int/2addr v0, v3

    if-ne v1, v10, :cond_14

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-nez v4, :cond_d

    :cond_14
    iget v4, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v4, v1

    iget v5, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v4, v5, v2, v3}, Lcn/kuwo/autosdk/b;->a(II[BI)V

    goto :goto_1

    :cond_15
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->e:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->m:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->n:J

    :try_start_4
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/autosdk/a;->c:[B
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_5

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/kuwo/autosdk/a;->a:Z

    if-ne v1, v10, :cond_16

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_16

    sget-object v0, Lcn/kuwo/autosdk/e;->a:Lcn/kuwo/autosdk/e;

    iget v2, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/autosdk/b;->a(Lcn/kuwo/autosdk/e;I)V

    :cond_16
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_0
.end method
