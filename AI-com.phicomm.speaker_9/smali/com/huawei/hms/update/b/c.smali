.class Lcom/huawei/hms/update/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/update/b/c;->c:I

    iput v0, p0, Lcom/huawei/hms/update/b/c;->e:I

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x800

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    if-le v2, v0, :cond_3

    const-string v2, "URI_HASH"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/huawei/hms/update/b/c;->b:Ljava/lang/String;

    return v1

    :cond_0
    const-string v2, "FILE_SIZE"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/update/b/c;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v1

    :cond_1
    const-string v2, "FILE_HASH"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/huawei/hms/update/b/c;->d:Ljava/lang/String;

    return v1

    :cond_2
    const-string v2, "RECEIVED"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/update/b/c;->e:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    :cond_3
    return v1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/update/b/c;->c:I

    return v0
.end method

.method public a(I)I
    .locals 6

    iget v0, p0, Lcom/huawei/hms/update/b/c;->e:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/huawei/hms/update/b/c;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI_HASH"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/hms/update/b/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "FILE_SIZE"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/huawei/hms/update/b/c;->c:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "FILE_HASH"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hms/update/b/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "RECEIVED"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/huawei/hms/update/b/c;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lcom/huawei/hms/a/c;->a(Ljava/io/Writer;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_6

    :catch_6
    move-exception p1

    move-object v2, v1

    :goto_0
    :try_start_3
    const-string v3, "DownloadRecord"

    const-string v4, "Failed to load Download Record."

    goto :goto_2

    :catch_7
    move-exception p1

    move-object v2, v1

    :goto_1
    const-string v3, "DownloadRecord"

    const-string v4, "Failed to load Download Record."

    :goto_2
    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_8
    move-exception p1

    move-object v2, v1

    :goto_3
    const-string v3, "DownloadRecord"

    const-string v4, "Failed to load Download Record."
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :goto_4
    invoke-static {v1}, Lcom/huawei/hms/a/c;->a(Ljava/io/Writer;)V

    :goto_5
    invoke-static {v2}, Lcom/huawei/hms/a/c;->a(Ljava/io/OutputStream;)V

    return v0

    :catchall_2
    move-exception p1

    :goto_6
    invoke-static {v1}, Lcom/huawei/hms/a/c;->a(Ljava/io/Writer;)V

    invoke-static {v2}, Lcom/huawei/hms/a/c;->a(Ljava/io/OutputStream;)V

    throw p1

    :cond_0
    return v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/a/e;->a([B)[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/huawei/hms/a/b;->b([BZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/update/b/c;->b:Ljava/lang/String;

    :cond_0
    iput p2, p0, Lcom/huawei/hms/update/b/c;->c:I

    iput-object p3, p0, Lcom/huawei/hms/update/b/c;->d:Ljava/lang/String;

    iput v0, p0, Lcom/huawei/hms/update/b/c;->e:I

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 6

    iput-object p1, p0, Lcom/huawei/hms/update/b/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/update/b/c;->a:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/b/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/huawei/hms/update/b/c;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/b/c;->c(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-static {v2}, Lcom/huawei/hms/a/c;->a(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/huawei/hms/a/c;->a(Ljava/io/InputStream;)V

    return p1

    :catchall_0
    move-exception p1

    move-object v0, p1

    move-object p1, v2

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, p1

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    :goto_1
    :try_start_3
    const-string v3, "DownloadRecord"

    const-string v4, "Failed to load Download Record."

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    :goto_2
    const-string v3, "DownloadRecord"

    const-string v4, "Failed to load Download Record."

    :goto_3
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_8
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    :goto_4
    const-string v3, "DownloadRecord"

    const-string v4, "Failed to load Download Record."
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :goto_5
    invoke-static {p1}, Lcom/huawei/hms/a/c;->a(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/huawei/hms/a/c;->a(Ljava/io/InputStream;)V

    return v0

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {p1}, Lcom/huawei/hms/a/c;->a(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/huawei/hms/a/c;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/update/b/c;->e:I

    return v0
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/a/e;->a([B)[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/huawei/hms/a/b;->b([BZ)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/huawei/hms/update/b/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/huawei/hms/update/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget p1, p0, Lcom/huawei/hms/update/b/c;->c:I

    if-eq p1, p2, :cond_2

    return v0

    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/update/b/c;->d:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/huawei/hms/update/b/c;->d:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method
