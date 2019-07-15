.class public Lcom/bumptech/glide/g;
.super Ljava/lang/Object;
.source "Glide.java"


# static fields
.field private static volatile a:Lcom/bumptech/glide/g;


# instance fields
.field private final b:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

.field private final c:Lcom/bumptech/glide/load/engine/b;

.field private final d:Lcom/bumptech/glide/load/engine/a/c;

.field private final e:Lcom/bumptech/glide/load/engine/cache/g;

.field private final f:Lcom/bumptech/glide/load/DecodeFormat;

.field private final g:Lcom/bumptech/glide/f/b/f;

.field private final h:Lcom/bumptech/glide/load/resource/transcode/c;

.field private final i:Lcom/bumptech/glide/e/c;

.field private final j:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

.field private final k:Lcom/bumptech/glide/load/resource/c/f;

.field private final l:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

.field private final m:Lcom/bumptech/glide/load/resource/c/f;

.field private final n:Landroid/os/Handler;

.field private final o:Lcom/bumptech/glide/load/engine/b/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/b;Lcom/bumptech/glide/load/engine/cache/g;Lcom/bumptech/glide/load/engine/a/c;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 3

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/bumptech/glide/f/b/f;

    invoke-direct {v0}, Lcom/bumptech/glide/f/b/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/f/b/f;

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/transcode/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/resource/transcode/c;

    .line 204
    iput-object p1, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/b;

    .line 205
    iput-object p3, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/engine/a/c;

    .line 206
    iput-object p2, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/engine/cache/g;

    .line 207
    iput-object p5, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/DecodeFormat;

    .line 208
    new-instance p1, Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-direct {p1, p4}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    .line 209
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bumptech/glide/g;->n:Landroid/os/Handler;

    .line 210
    new-instance p1, Lcom/bumptech/glide/load/engine/b/a;

    invoke-direct {p1, p2, p3, p5}, Lcom/bumptech/glide/load/engine/b/a;-><init>(Lcom/bumptech/glide/load/engine/cache/g;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object p1, p0, Lcom/bumptech/glide/g;->o:Lcom/bumptech/glide/load/engine/b/a;

    .line 212
    new-instance p1, Lcom/bumptech/glide/e/c;

    invoke-direct {p1}, Lcom/bumptech/glide/e/c;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/e/c;

    .line 214
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {p1, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 216
    iget-object p2, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/e/c;

    const-class v0, Ljava/io/InputStream;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0, v1, p1}, Lcom/bumptech/glide/e/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e/b;)V

    .line 218
    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {p2, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 220
    iget-object p5, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/e/c;

    const-class v0, Landroid/os/ParcelFileDescriptor;

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p5, v0, v1, p2}, Lcom/bumptech/glide/e/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e/b;)V

    .line 222
    new-instance p5, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {p5, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>(Lcom/bumptech/glide/e/b;Lcom/bumptech/glide/e/b;)V

    .line 224
    iget-object p1, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/e/c;

    const-class p2, Lcom/bumptech/glide/load/model/f;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2, v0, p5}, Lcom/bumptech/glide/e/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e/b;)V

    .line 226
    new-instance p1, Lcom/bumptech/glide/load/resource/gif/c;

    invoke-direct {p1, p4, p3}, Lcom/bumptech/glide/load/resource/gif/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V

    .line 228
    iget-object p2, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/e/c;

    const-class v0, Ljava/io/InputStream;

    const-class v1, Lcom/bumptech/glide/load/resource/gif/b;

    invoke-virtual {p2, v0, v1, p1}, Lcom/bumptech/glide/e/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e/b;)V

    .line 230
    iget-object p2, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/e/c;

    const-class v0, Lcom/bumptech/glide/load/model/f;

    const-class v1, Lcom/bumptech/glide/load/resource/c/a;

    new-instance v2, Lcom/bumptech/glide/load/resource/c/g;

    invoke-direct {v2, p5, p1, p3}, Lcom/bumptech/glide/load/resource/c/g;-><init>(Lcom/bumptech/glide/e/b;Lcom/bumptech/glide/e/b;Lcom/bumptech/glide/load/engine/a/c;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/bumptech/glide/e/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e/b;)V

    .line 233
    iget-object p1, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/e/c;

    const-class p2, Ljava/io/InputStream;

    const-class p5, Ljava/io/File;

    new-instance v0, Lcom/bumptech/glide/load/resource/b/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/b/d;-><init>()V

    invoke-virtual {p1, p2, p5, v0}, Lcom/bumptech/glide/e/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/e/b;)V

    .line 235
    const-class p1, Ljava/io/File;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorFileLoader$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 236
    const-class p1, Ljava/io/File;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamFileLoader$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamFileLoader$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 237
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 238
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 239
    const-class p1, Ljava/lang/Integer;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorResourceLoader$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 240
    const-class p1, Ljava/lang/Integer;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamResourceLoader$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 241
    const-class p1, Ljava/lang/String;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorStringLoader$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 242
    const-class p1, Ljava/lang/String;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamStringLoader$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamStringLoader$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 243
    const-class p1, Landroid/net/Uri;

    const-class p2, Landroid/os/ParcelFileDescriptor;

    new-instance p5, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/file_descriptor/FileDescriptorUriLoader$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 244
    const-class p1, Landroid/net/Uri;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/StreamUriLoader$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/StreamUriLoader$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 245
    const-class p1, Ljava/net/URL;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/d$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/d$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 246
    const-class p1, Lcom/bumptech/glide/load/model/c;

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/a$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/a$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 247
    const-class p1, [B

    const-class p2, Ljava/io/InputStream;

    new-instance p5, Lcom/bumptech/glide/load/model/stream/b$a;

    invoke-direct {p5}, Lcom/bumptech/glide/load/model/stream/b$a;-><init>()V

    invoke-virtual {p0, p1, p2, p5}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V

    .line 249
    iget-object p1, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/resource/transcode/c;

    const-class p2, Landroid/graphics/Bitmap;

    const-class p5, Lcom/bumptech/glide/load/resource/bitmap/f;

    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/c;)V

    invoke-virtual {p1, p2, p5, v0}, Lcom/bumptech/glide/load/resource/transcode/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/b;)V

    .line 251
    iget-object p1, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/resource/transcode/c;

    const-class p2, Lcom/bumptech/glide/load/resource/c/a;

    const-class p5, Lcom/bumptech/glide/load/resource/a/b;

    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/a;

    new-instance v1, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-direct {v1, p4, p3}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/a/c;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/transcode/a;-><init>(Lcom/bumptech/glide/load/resource/transcode/b;)V

    invoke-virtual {p1, p2, p5, v0}, Lcom/bumptech/glide/load/resource/transcode/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/b;)V

    .line 255
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {p1, p3}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object p1, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    .line 256
    new-instance p1, Lcom/bumptech/glide/load/resource/c/f;

    iget-object p2, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {p1, p3, p2}, Lcom/bumptech/glide/load/resource/c/f;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/f;)V

    iput-object p1, p0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/load/resource/c/f;

    .line 258
    new-instance p1, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {p1, p3}, Lcom/bumptech/glide/load/resource/bitmap/FitCenter;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object p1, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    .line 259
    new-instance p1, Lcom/bumptech/glide/load/resource/c/f;

    iget-object p2, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    invoke-direct {p1, p3, p2}, Lcom/bumptech/glide/load/resource/c/f;-><init>(Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/f;)V

    iput-object p1, p0, Lcom/bumptech/glide/g;->m:Lcom/bumptech/glide/load/resource/c/f;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/g;
    .locals 5

    .line 145
    sget-object v0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    if-nez v0, :cond_2

    .line 146
    const-class v0, Lcom/bumptech/glide/g;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    if-nez v1, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 149
    new-instance v1, Lcom/bumptech/glide/module/ManifestParser;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/module/ManifestParser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/module/ManifestParser;->a()Ljava/util/List;

    move-result-object v1

    .line 151
    new-instance v2, Lcom/bumptech/glide/GlideBuilder;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/GlideBuilder;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/module/a;

    .line 153
    invoke-interface {v4, p0, v2}, Lcom/bumptech/glide/module/a;->a(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v2}, Lcom/bumptech/glide/GlideBuilder;->a()Lcom/bumptech/glide/g;

    move-result-object v2

    sput-object v2, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/module/a;

    .line 157
    sget-object v3, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    invoke-interface {v2, p0, v3}, Lcom/bumptech/glide/module/a;->a(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    goto :goto_1

    .line 160
    :cond_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 163
    :cond_2
    :goto_2
    sget-object p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)Lcom/bumptech/glide/h;
    .locals 1

    .line 640
    invoke-static {}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/k;

    move-result-object v0

    .line 641
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/k;->a(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/h;
    .locals 1

    .line 652
    invoke-static {}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/k;

    move-result-object v0

    .line 653
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/k<",
            "TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 567
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/k;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/k<",
            "TT;TY;>;"
        }
    .end annotation

    if-nez p0, :cond_1

    const-string p0, "Glide"

    const/4 p1, 0x3

    .line 534
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Glide"

    const-string p1, "Unable to load null model, setting placeholder only"

    .line 535
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 539
    :cond_1
    invoke-static {p2}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object p2

    invoke-direct {p2}, Lcom/bumptech/glide/g;->i()Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/k;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/bumptech/glide/f/b/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/b/j<",
            "*>;)V"
        }
    .end annotation

    .line 427
    invoke-static {}, Lcom/bumptech/glide/h/h;->a()V

    .line 428
    invoke-interface {p0}, Lcom/bumptech/glide/f/b/j;->c()Lcom/bumptech/glide/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Lcom/bumptech/glide/f/b;->d()V

    const/4 v0, 0x0

    .line 431
    invoke-interface {p0, v0}, Lcom/bumptech/glide/f/b/j;->a(Lcom/bumptech/glide/f/b;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/h;
    .locals 1

    .line 628
    invoke-static {}, Lcom/bumptech/glide/d/k;->a()Lcom/bumptech/glide/d/k;

    move-result-object v0

    .line 629
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/d/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/k<",
            "TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 588
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/k;

    move-result-object p0

    return-object p0
.end method

.method private i()Lcom/bumptech/glide/load/model/GenericLoaderFactory;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    return-object v0
.end method


# virtual methods
.method a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/f/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/bumptech/glide/f/b/j<",
            "TR;>;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/f/b/f;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/f/b/f;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/bumptech/glide/f/b/j;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/bumptech/glide/load/engine/a/c;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/engine/a/c;

    return-object v0
.end method

.method a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/bumptech/glide/load/resource/transcode/b<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/load/resource/transcode/c;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/transcode/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/b;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 383
    invoke-static {}, Lcom/bumptech/glide/h/h;->a()V

    .line 385
    iget-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/engine/cache/g;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/g;->a(I)V

    .line 386
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/engine/a/c;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/a/c;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/model/l<",
            "TT;TY;>;)V"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/load/model/GenericLoaderFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/l;)Lcom/bumptech/glide/load/model/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 494
    invoke-interface {p1}, Lcom/bumptech/glide/load/model/l;->a()V

    :cond_0
    return-void
.end method

.method b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/e/b<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/e/c;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/e/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/e/b;

    move-result-object p1

    return-object p1
.end method

.method b()Lcom/bumptech/glide/load/engine/b;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/b;

    return-object v0
.end method

.method c()Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    return-object v0
.end method

.method d()Lcom/bumptech/glide/load/resource/bitmap/FitCenter;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/load/resource/bitmap/FitCenter;

    return-object v0
.end method

.method e()Lcom/bumptech/glide/load/resource/c/f;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/g;->k:Lcom/bumptech/glide/load/resource/c/f;

    return-object v0
.end method

.method f()Lcom/bumptech/glide/load/resource/c/f;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/bumptech/glide/g;->m:Lcom/bumptech/glide/load/resource/c/f;

    return-object v0
.end method

.method g()Lcom/bumptech/glide/load/DecodeFormat;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/DecodeFormat;

    return-object v0
.end method

.method public h()V
    .locals 1

    .line 370
    invoke-static {}, Lcom/bumptech/glide/h/h;->a()V

    .line 372
    iget-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/engine/cache/g;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/g;->a()V

    .line 373
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/load/engine/a/c;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/a/c;->a()V

    return-void
.end method
