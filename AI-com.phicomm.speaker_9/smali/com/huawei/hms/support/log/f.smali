.class public abstract Lcom/huawei/hms/support/log/f;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field protected a:Lcom/huawei/hms/support/log/LogLevel;

.field protected b:Lcom/huawei/hms/support/log/LogLevel;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:J

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/support/log/LogLevel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/support/log/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/support/log/f;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/log/f;->g:Ljava/util/Map;

    sget-object v0, Lcom/huawei/hms/support/log/LogLevel;->INFO:Lcom/huawei/hms/support/log/LogLevel;

    iput-object v0, p0, Lcom/huawei/hms/support/log/f;->a:Lcom/huawei/hms/support/log/LogLevel;

    sget-object v0, Lcom/huawei/hms/support/log/LogLevel;->ERROR:Lcom/huawei/hms/support/log/LogLevel;

    iput-object v0, p0, Lcom/huawei/hms/support/log/f;->b:Lcom/huawei/hms/support/log/LogLevel;

    iput-object p1, p0, Lcom/huawei/hms/support/log/f;->e:Ljava/lang/String;

    iput-wide p2, p0, Lcom/huawei/hms/support/log/f;->f:J

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_2

    if-eqz p4, :cond_0

    :try_start_1
    const-string p3, "success"

    goto :goto_0

    :cond_0
    const-string p3, "failure"

    :goto_0
    invoke-static {}, Lcom/huawei/hms/support/log/a/a;->a()Lcom/huawei/hms/support/log/a/a;

    move-result-object p4

    const-string v2, "rename to "

    invoke-virtual {p4, v2}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object p5

    const-string v2, " "

    invoke-virtual {p5, v2}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    iget p3, p0, Lcom/huawei/hms/support/log/f;->d:I

    if-lez p3, :cond_1

    invoke-virtual {p4}, Lcom/huawei/hms/support/log/a/a;->b()Lcom/huawei/hms/support/log/a/a;

    move-result-object p3

    invoke-static {}, Lcom/huawei/hms/support/log/b;->a()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    :cond_1
    new-instance p3, Lcom/huawei/hms/support/log/e$a;

    sget-object p5, Lcom/huawei/hms/support/log/LogLevel;->OUT:Lcom/huawei/hms/support/log/LogLevel;

    invoke-direct {p3, v0, p5}, Lcom/huawei/hms/support/log/e$a;-><init>(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)V

    invoke-virtual {p3}, Lcom/huawei/hms/support/log/e$a;->a()Lcom/huawei/hms/support/log/e;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/huawei/hms/support/log/e;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/huawei/hms/support/log/e;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    sget-object p3, Lcom/huawei/hms/support/log/f;->c:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    sget-object p2, Lcom/huawei/hms/support/log/f;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_4

    :catch_2
    :goto_1
    :try_start_3
    const-string p2, "LoggerBase"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "println error, error:IOException, file:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    goto :goto_3

    :catch_3
    :goto_2
    const-string p2, "LoggerBase"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "println error, error:FileNotFoundException, file:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    const-string p1, "LoggerBase"

    const-string p2, "println, close oswriter error"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :goto_4
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    const-string p2, "LoggerBase"

    const-string p3, "println, close oswriter error"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    throw p1
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LoggerBase"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LoggerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/huawei/hms/support/log/LogLevel;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/support/log/f;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/support/log/LogLevel;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/huawei/hms/support/log/f;->a:Lcom/huawei/hms/support/log/LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract a(Lcom/huawei/hms/support/log/e;)V
.end method

.method protected a(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/support/log/f;->a(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/huawei/hms/support/log/f;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/huawei/hms/support/log/LogLevel;)Z
    .locals 0

    invoke-virtual {p2}, Lcom/huawei/hms/support/log/LogLevel;->value()I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/log/f;->a(Ljava/lang/String;)Lcom/huawei/hms/support/log/LogLevel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/support/log/LogLevel;->value()I

    move-result p1

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hms/support/log/f;->f:J

    return-wide v0
.end method

.method public b(Lcom/huawei/hms/support/log/LogLevel;)V
    .locals 2

    iput-object p1, p0, Lcom/huawei/hms/support/log/f;->a:Lcom/huawei/hms/support/log/LogLevel;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/support/log/f;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract b(Lcom/huawei/hms/support/log/e;)V
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/support/log/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/huawei/hms/support/log/f;->b()J

    move-result-wide v1

    new-instance v4, Ljava/io/File;

    iget-object v3, p0, Lcom/huawei/hms/support/log/f;->e:Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v9, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v4, v9}, Ljava/io/File;->setReadable(Z)Z

    invoke-virtual {v4, v9}, Ljava/io/File;->setWritable(Z)Z

    invoke-virtual {v4, v5, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v3, v1, v6

    if-lez v3, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v10, v3

    add-long v12, v6, v10

    cmp-long v3, v12, v1

    if-lez v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/hms/support/log/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bak"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, v1}, Lcom/huawei/hms/support/log/f;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    move-object v8, v0

    move v7, v1

    move v6, v9

    goto :goto_0

    :cond_2
    move-object v8, v0

    move v6, v5

    move v7, v6

    :goto_0
    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/huawei/hms/support/log/f;->a(Ljava/io/File;Ljava/lang/String;ZZLjava/lang/String;)V

    iget p1, p0, Lcom/huawei/hms/support/log/f;->d:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/huawei/hms/support/log/f;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
