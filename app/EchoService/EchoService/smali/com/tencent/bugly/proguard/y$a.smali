.class public final Lcom/tencent/bugly/proguard/y$a;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const-wide/16 v0, 0x7800

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/y$a;->e:J

    .line 262
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iput-object p1, p0, Lcom/tencent/bugly/proguard/y$a;->c:Ljava/lang/String;

    .line 266
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/y$a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/y$a;->a:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/tencent/bugly/proguard/y$a;->b:Ljava/io/File;

    return-object v0
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 276
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/y$a;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/y$a;->b:Ljava/io/File;

    .line 277
    iget-object v1, p0, Lcom/tencent/bugly/proguard/y$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/tencent/bugly/proguard/y$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .line 279
    if-nez v1, :cond_0

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/y$a;->a:Z

    .line 295
    :goto_0
    return v0

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/y$a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 285
    if-nez v1, :cond_1

    .line 286
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/y$a;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/y$a;->a:Z

    .line 295
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/y$a;)J
    .locals 2

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/y$a;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/y$a;)Z
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/y$a;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/bugly/proguard/y$a;)Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/y$a;->a:Z

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 305
    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/y$a;->a:Z

    if-nez v2, :cond_1

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 308
    :cond_1
    const/4 v3, 0x0

    .line 310
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/y$a;->b:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :try_start_1
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 312
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 313
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 314
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 315
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/y$a;->d:J

    array-length v3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/bugly/proguard/y$a;->d:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move v0, v1

    .line 328
    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    move-object v1, v3

    .line 317
    :goto_2
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/y$a;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 318
    if-eqz v1, :cond_0

    .line 322
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_2

    .line 322
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 325
    :cond_2
    :goto_4
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 320
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 316
    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method
