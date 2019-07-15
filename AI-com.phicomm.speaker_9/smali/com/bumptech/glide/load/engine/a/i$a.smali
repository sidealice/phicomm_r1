.class final Lcom/bumptech/glide/load/engine/a/i$a;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/i$b;

.field private b:I

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/i$b;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/i$a;->a:Lcom/bumptech/glide/load/engine/a/i$b;

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/a/i$a;)I
    .locals 0

    .line 172
    iget p0, p0, Lcom/bumptech/glide/load/engine/a/i$a;->b:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/i$a;->a:Lcom/bumptech/glide/load/engine/a/i$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a/i$b;->a(Lcom/bumptech/glide/load/engine/a/h;)V

    return-void
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/i$a;->b:I

    .line 190
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 205
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/a/i$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 206
    check-cast p1, Lcom/bumptech/glide/load/engine/a/i$a;

    .line 207
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/i$a;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/i$a;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 214
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/i$a;->b:I

    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    .line 215
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/i$a;->b:I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/i$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/engine/a/i;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
