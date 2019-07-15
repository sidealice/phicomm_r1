.class final Lorg/xutils/image/ImageDecoder$1;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/image/ImageDecoder;->decodeFileWithLock(Ljava/io/File;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$Cancelable;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$finalBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$options:Lorg/xutils/image/ImageOptions;


# direct methods
.method constructor <init>(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/xutils/image/ImageDecoder$1;->val$file:Ljava/io/File;

    iput-object p2, p0, Lorg/xutils/image/ImageDecoder$1;->val$options:Lorg/xutils/image/ImageOptions;

    iput-object p3, p0, Lorg/xutils/image/ImageDecoder$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lorg/xutils/image/ImageDecoder$1;->val$file:Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/image/ImageDecoder$1;->val$options:Lorg/xutils/image/ImageOptions;

    iget-object v2, p0, Lorg/xutils/image/ImageDecoder$1;->val$finalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lorg/xutils/image/ImageDecoder;->access$000(Ljava/io/File;Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap;)V

    .line 129
    return-void
.end method
