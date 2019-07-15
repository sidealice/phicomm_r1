.class Ltop/zibin/luban/a;
.super Ljava/lang/Object;
.source "Engine.java"


# instance fields
.field private a:Landroid/media/ExifInterface;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Ltop/zibin/luban/a;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltop/zibin/luban/a;->a:Landroid/media/ExifInterface;

    .line 27
    :cond_0
    iput-object p2, p0, Ltop/zibin/luban/a;->c:Ljava/io/File;

    .line 28
    iput-object p1, p0, Ltop/zibin/luban/a;->b:Ljava/io/File;

    .line 30
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 32
    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 35
    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p1, p0, Ltop/zibin/luban/a;->d:I

    .line 36
    iget p1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Ltop/zibin/luban/a;->e:I

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .line 74
    iget-object v0, p0, Ltop/zibin/luban/a;->a:Landroid/media/ExifInterface;

    if-nez v0, :cond_0

    return-object p1

    .line 76
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Ltop/zibin/luban/a;->a:Landroid/media/ExifInterface;

    const-string v2, "Orientation"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x10e

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    goto :goto_0

    :cond_3
    const/16 v0, 0xb4

    :goto_0
    int-to-float v0, v0

    .line 91
    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/io/File;)Z
    .locals 2

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private b()I
    .locals 7

    .line 46
    iget v0, p0, Ltop/zibin/luban/a;->d:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Ltop/zibin/luban/a;->d:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Ltop/zibin/luban/a;->d:I

    :goto_0
    iput v0, p0, Ltop/zibin/luban/a;->d:I

    .line 47
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    rem-int/2addr v0, v1

    if-ne v0, v2, :cond_1

    iget v0, p0, Ltop/zibin/luban/a;->e:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    :goto_1
    iput v0, p0, Ltop/zibin/luban/a;->e:I

    .line 49
    iget v0, p0, Ltop/zibin/luban/a;->d:I

    iget v3, p0, Ltop/zibin/luban/a;->e:I

    if-le v0, v3, :cond_2

    iget v0, p0, Ltop/zibin/luban/a;->e:I

    goto :goto_2

    :cond_2
    iget v0, p0, Ltop/zibin/luban/a;->d:I

    :goto_2
    iput v0, p0, Ltop/zibin/luban/a;->d:I

    .line 50
    iget v0, p0, Ltop/zibin/luban/a;->d:I

    iget v3, p0, Ltop/zibin/luban/a;->e:I

    if-le v0, v3, :cond_3

    iget v0, p0, Ltop/zibin/luban/a;->d:I

    goto :goto_3

    :cond_3
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    :goto_3
    iput v0, p0, Ltop/zibin/luban/a;->e:I

    .line 52
    iget v0, p0, Ltop/zibin/luban/a;->d:I

    int-to-double v3, v0

    iget v0, p0, Ltop/zibin/luban/a;->e:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v3, v5

    const-wide/high16 v5, 0x3fe2000000000000L    # 0.5625

    if-gtz v0, :cond_8

    cmpl-double v0, v3, v5

    if-lez v0, :cond_8

    .line 55
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    const/16 v3, 0x680

    if-ge v0, v3, :cond_4

    :goto_4
    move v1, v2

    goto :goto_6

    .line 57
    :cond_4
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    const/16 v4, 0x137e

    if-lt v0, v3, :cond_5

    iget v0, p0, Ltop/zibin/luban/a;->e:I

    if-ge v0, v4, :cond_5

    goto :goto_6

    .line 59
    :cond_5
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    if-lt v0, v4, :cond_6

    iget v0, p0, Ltop/zibin/luban/a;->e:I

    const/16 v1, 0x2800

    if-ge v0, v1, :cond_6

    const/4 v1, 0x4

    goto :goto_6

    .line 62
    :cond_6
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    div-int/lit16 v0, v0, 0x500

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    div-int/lit16 v0, v0, 0x500

    :goto_5
    move v1, v0

    goto :goto_6

    :cond_8
    cmpg-double v0, v3, v5

    if-gtz v0, :cond_a

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v3, v0

    if-lez v5, :cond_a

    .line 65
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    div-int/lit16 v0, v0, 0x500

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    div-int/lit16 v0, v0, 0x500

    goto :goto_5

    .line 67
    :cond_a
    iget v0, p0, Ltop/zibin/luban/a;->e:I

    int-to-double v0, v0

    const-wide/high16 v5, 0x4094000000000000L    # 1280.0

    div-double/2addr v5, v3

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    :goto_6
    return v1
.end method


# virtual methods
.method a()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 98
    invoke-direct {p0}, Ltop/zibin/luban/a;->b()I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 100
    iget-object v1, p0, Ltop/zibin/luban/a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 103
    invoke-direct {p0, v0}, Ltop/zibin/luban/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 107
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Ltop/zibin/luban/a;->c:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 108
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 109
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 110
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 111
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 113
    iget-object v0, p0, Ltop/zibin/luban/a;->c:Ljava/io/File;

    return-object v0
.end method
