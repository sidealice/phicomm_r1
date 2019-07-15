.class public Lcom/bumptech/glide/load/resource/gif/b;
.super Lcom/bumptech/glide/load/resource/a/b;
.source "GifDrawable.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/gif/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;

.field private final c:Lcom/bumptech/glide/load/resource/gif/b$a;

.field private final d:Lcom/bumptech/glide/b/a;

.field private final e:Lcom/bumptech/glide/load/resource/gif/f;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/engine/a/c;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/b/c;[BLandroid/graphics/Bitmap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/b/a$a;",
            "Lcom/bumptech/glide/load/engine/a/c;",
            "Lcom/bumptech/glide/load/f<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/bumptech/glide/b/c;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 73
    new-instance v10, Lcom/bumptech/glide/load/resource/gif/b$a;

    move-object v0, v10

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/b$a;-><init>(Lcom/bumptech/glide/b/c;[BLandroid/content/Context;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;)V

    move-object v0, p0

    invoke-direct {v0, v10}, Lcom/bumptech/glide/load/resource/gif/b;-><init>(Lcom/bumptech/glide/load/resource/gif/b$a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/resource/gif/b$a;)V
    .locals 9

    .line 84
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/a/b;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->i:Z

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:I

    if-nez p1, :cond_0

    .line 86
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "GifState must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    .line 90
    new-instance v0, Lcom/bumptech/glide/b/a;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->g:Lcom/bumptech/glide/b/a$a;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/b/a;-><init>(Lcom/bumptech/glide/b/a$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/b/a;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/b/a;

    iget-object v1, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->a:Lcom/bumptech/glide/b/c;

    iget-object v2, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/b/a;->a(Lcom/bumptech/glide/b/c;[B)V

    .line 93
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/f;

    iget-object v4, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->c:Landroid/content/Context;

    iget-object v6, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/b/a;

    iget v7, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->e:I

    iget v8, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->f:I

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/bumptech/glide/load/resource/gif/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/resource/gif/f$b;Lcom/bumptech/glide/b/a;II)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Lcom/bumptech/glide/load/resource/gif/f;

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Lcom/bumptech/glide/load/resource/gif/f;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->d:Lcom/bumptech/glide/load/f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/gif/f;->a(Lcom/bumptech/glide/load/f;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/b;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/gif/b;",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/f<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 79
    new-instance v10, Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v1, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->a:Lcom/bumptech/glide/b/c;

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v2, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->b:[B

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v3, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->c:Landroid/content/Context;

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget v5, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->e:I

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget v6, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->f:I

    iget-object v0, p1, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v7, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->g:Lcom/bumptech/glide/b/a$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v8, p1, Lcom/bumptech/glide/load/resource/gif/b$a;->h:Lcom/bumptech/glide/load/engine/a/c;

    move-object v0, v10

    move-object v4, p3

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/resource/gif/b$a;-><init>(Lcom/bumptech/glide/b/c;[BLandroid/content/Context;Lcom/bumptech/glide/load/f;IILcom/bumptech/glide/b/a$a;Lcom/bumptech/glide/load/engine/a/c;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v10}, Lcom/bumptech/glide/load/resource/gif/b;-><init>(Lcom/bumptech/glide/load/resource/gif/b$a;)V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->j:I

    return-void
.end method

.method private h()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Lcom/bumptech/glide/load/resource/gif/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/f;->c()V

    .line 171
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->invalidateSelf()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->invalidateSelf()V

    goto :goto_0

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->f:Z

    if-nez v0, :cond_1

    .line 179
    iput-boolean v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->f:Z

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Lcom/bumptech/glide/load/resource/gif/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/f;->a()V

    .line 181
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->invalidateSelf()V

    :cond_1
    :goto_0
    return-void
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->f:Z

    .line 187
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Lcom/bumptech/glide/load/resource/gif/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/f;->b()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 307
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    if-nez p1, :cond_1

    .line 312
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/b/a;

    invoke-virtual {p1}, Lcom/bumptech/glide/b/a;->e()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:I

    goto :goto_0

    .line 314
    :cond_1
    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:I

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->stop()V

    .line 264
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->h()V

    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->invalidateSelf()V

    .line 270
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 271
    iget p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->j:I

    .line 274
    :cond_1
    iget p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->j:I

    iget v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->k:I

    if-lt p1, v0, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->stop()V

    :cond_2
    return-void
.end method

.method public c()Lcom/bumptech/glide/load/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/f<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->d:Lcom/bumptech/glide/load/f;

    return-object v0
.end method

.method public d()[B
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->b:[B

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 229
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x77

    .line 234
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Z

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Lcom/bumptech/glide/load/resource/gif/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/f;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->i:Landroid/graphics/Bitmap;

    :goto_0
    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/gif/b;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->d:Lcom/bumptech/glide/b/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/b/a;->c()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->h:Z

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->h:Lcom/bumptech/glide/load/engine/a/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/resource/gif/b$a;->i:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/a/c;->a(Landroid/graphics/Bitmap;)Z

    .line 290
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Lcom/bumptech/glide/load/resource/gif/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/f;->c()V

    .line 291
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->e:Lcom/bumptech/glide/load/resource/gif/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/f;->b()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->c:Lcom/bumptech/glide/load/resource/gif/b$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/gif/b$a;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->f:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/a/b;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->l:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 192
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/gif/b;->i:Z

    if-nez p1, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->j()V

    goto :goto_0

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->g:Z

    if-eqz v0, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->i()V

    .line 198
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/load/resource/a/b;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->g:Z

    .line 146
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->g()V

    .line 147
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->i:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->i()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/gif/b;->g:Z

    .line 155
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->j()V

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/gif/b;->h()V

    :cond_0
    return-void
.end method
