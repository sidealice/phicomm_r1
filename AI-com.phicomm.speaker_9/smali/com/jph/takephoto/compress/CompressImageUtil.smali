.class public Lcom/jph/takephoto/compress/CompressImageUtil;
.super Ljava/lang/Object;
.source "CompressImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;
    }
.end annotation


# instance fields
.field private config:Lcom/jph/takephoto/compress/CompressConfig;

.field private context:Landroid/content/Context;

.field mhHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jph/takephoto/compress/CompressConfig;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jph/takephoto/compress/CompressImageUtil;->mhHandler:Landroid/os/Handler;

    .line 27
    iput-object p1, p0, Lcom/jph/takephoto/compress/CompressImageUtil;->context:Landroid/content/Context;

    if-nez p2, :cond_0

    .line 28
    invoke-static {}, Lcom/jph/takephoto/compress/CompressConfig;->ofDefaultConfig()Lcom/jph/takephoto/compress/CompressConfig;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/jph/takephoto/compress/CompressImageUtil;->config:Lcom/jph/takephoto/compress/CompressConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/jph/takephoto/compress/CompressImageUtil;)Lcom/jph/takephoto/compress/CompressConfig;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/jph/takephoto/compress/CompressImageUtil;->config:Lcom/jph/takephoto/compress/CompressConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jph/takephoto/compress/CompressImageUtil;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/jph/takephoto/compress/CompressImageUtil;->getThumbnailFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/jph/takephoto/compress/CompressImageUtil;ZLjava/lang/String;Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jph/takephoto/compress/CompressImageUtil;->sendMsg(ZLjava/lang/String;Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V

    return-void
.end method

.method private compressImageByPixel(Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "\u8981\u538b\u7f29\u7684\u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 94
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/jph/takephoto/compress/CompressImageUtil;->sendMsg(ZLjava/lang/String;Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V

    return-void

    .line 97
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 98
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 99
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 100
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 101
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 102
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 103
    iget-object v4, p0, Lcom/jph/takephoto/compress/CompressImageUtil;->config:Lcom/jph/takephoto/compress/CompressConfig;

    invoke-virtual {v4}, Lcom/jph/takephoto/compress/CompressConfig;->getMaxPixel()I

    move-result v4

    int-to-float v4, v4

    if-lt v0, v3, :cond_1

    int-to-float v5, v0

    cmpl-float v5, v5, v4

    if-lez v5, :cond_1

    .line 106
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    if-ge v0, v3, :cond_2

    int-to-float v0, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 109
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 112
    :goto_0
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 113
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 114
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 115
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 116
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/jph/takephoto/compress/CompressImageUtil;->config:Lcom/jph/takephoto/compress/CompressConfig;

    invoke-virtual {v1}, Lcom/jph/takephoto/compress/CompressConfig;->isEnableQualityCompress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    invoke-direct {p0, v0, p1, p2}, Lcom/jph/takephoto/compress/CompressImageUtil;->compressImageByQuality(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V

    goto :goto_1

    .line 120
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/jph/takephoto/compress/CompressImageUtil;->getThumbnailFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 121
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;->onCompressSuccess(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private compressImageByQuality(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "\u50cf\u7d20\u538b\u7f29\u5931\u8d25,bitmap is null"

    .line 51
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/jph/takephoto/compress/CompressImageUtil;->sendMsg(ZLjava/lang/String;Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jph/takephoto/compress/CompressImageUtil$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/jph/takephoto/compress/CompressImageUtil$1;-><init>(Lcom/jph/takephoto/compress/CompressImageUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getThumbnailFile(Ljava/io/File;)Ljava/io/File;
    .locals 1

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressImageUtil;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/jph/takephoto/uitl/TFileUtils;->getPhotoCacheDir(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private sendMsg(ZLjava/lang/String;Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressImageUtil;->mhHandler:Landroid/os/Handler;

    new-instance v7, Lcom/jph/takephoto/compress/CompressImageUtil$2;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/jph/takephoto/compress/CompressImageUtil$2;-><init>(Lcom/jph/takephoto/compress/CompressImageUtil;ZLcom/jph/takephoto/compress/CompressImageUtil$CompressListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public compress(Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/jph/takephoto/compress/CompressImageUtil;->config:Lcom/jph/takephoto/compress/CompressConfig;

    invoke-virtual {v0}, Lcom/jph/takephoto/compress/CompressConfig;->isEnablePixelCompress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/jph/takephoto/compress/CompressImageUtil;->compressImageByPixel(Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "\u56fe\u7247\u538b\u7f29\u5931\u8d25,%s"

    const/4 v2, 0x1

    .line 35
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;->onCompressFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/jph/takephoto/compress/CompressImageUtil;->compressImageByQuality(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/jph/takephoto/compress/CompressImageUtil$CompressListener;)V

    :goto_0
    return-void
.end method
