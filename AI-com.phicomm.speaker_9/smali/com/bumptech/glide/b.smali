.class public Lcom/bumptech/glide/b;
.super Lcom/bumptech/glide/a;
.source "BitmapTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/a<",
        "TModelType;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Lcom/bumptech/glide/load/model/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/k<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/model/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/k<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/g;

.field private final j:Lcom/bumptech/glide/h$c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e;Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/h$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e<",
            "TModelType;***>;",
            "Lcom/bumptech/glide/load/model/k<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/k<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/bumptech/glide/h$c;",
            ")V"
        }
    .end annotation

    .line 52
    iget-object v0, p1, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    const-class v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lcom/bumptech/glide/b;->a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/b;)Lcom/bumptech/glide/e/e;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, p1}, Lcom/bumptech/glide/a;-><init>(Lcom/bumptech/glide/e/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V

    .line 54
    iput-object p2, p0, Lcom/bumptech/glide/b;->g:Lcom/bumptech/glide/load/model/k;

    .line 55
    iput-object p3, p0, Lcom/bumptech/glide/b;->h:Lcom/bumptech/glide/load/model/k;

    .line 56
    iget-object p1, p1, Lcom/bumptech/glide/e;->c:Lcom/bumptech/glide/g;

    iput-object p1, p0, Lcom/bumptech/glide/b;->i:Lcom/bumptech/glide/g;

    .line 57
    iput-object p4, p0, Lcom/bumptech/glide/b;->j:Lcom/bumptech/glide/h$c;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/model/k;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/b;)Lcom/bumptech/glide/e/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/load/model/k<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/bumptech/glide/load/model/k<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/b<",
            "Landroid/graphics/Bitmap;",
            "TR;>;)",
            "Lcom/bumptech/glide/e/e<",
            "TA;",
            "Lcom/bumptech/glide/load/model/f;",
            "Landroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p4, :cond_1

    .line 38
    const-class p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p4, p3}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/b;

    move-result-object p4

    .line 40
    :cond_1
    const-class p3, Lcom/bumptech/glide/load/model/f;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p3, v0}, Lcom/bumptech/glide/g;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/e/b;

    move-result-object p0

    .line 42
    new-instance p3, Lcom/bumptech/glide/load/model/e;

    invoke-direct {p3, p1, p2}, Lcom/bumptech/glide/load/model/e;-><init>(Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/model/k;)V

    .line 45
    new-instance p1, Lcom/bumptech/glide/e/e;

    invoke-direct {p1, p3, p4, p0}, Lcom/bumptech/glide/e/e;-><init>(Lcom/bumptech/glide/load/model/k;Lcom/bumptech/glide/load/resource/transcode/b;Lcom/bumptech/glide/e/b;)V

    return-object p1
.end method
