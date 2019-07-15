.class Lcom/bumptech/glide/load/engine/a/a$a;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/a/a$b;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/a/a$b;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/a$a;->a:Lcom/bumptech/glide/load/engine/a/a$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->a:Lcom/bumptech/glide/load/engine/a/a$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/engine/a/a$b;->a(Lcom/bumptech/glide/load/engine/a/h;)V

    return-void
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/bumptech/glide/load/engine/a/a$a;->b:I

    .line 88
    iput p2, p0, Lcom/bumptech/glide/load/engine/a/a$a;->c:I

    .line 89
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 94
    instance-of v0, p1, Lcom/bumptech/glide/load/engine/a/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 95
    check-cast p1, Lcom/bumptech/glide/load/engine/a/a$a;

    .line 96
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/a$a;->b:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->c:I

    iget v2, p1, Lcom/bumptech/glide/load/engine/a/a$a;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->b:I

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    .line 106
    iget v2, p0, Lcom/bumptech/glide/load/engine/a/a$a;->c:I

    add-int/2addr v0, v2

    mul-int/2addr v1, v0

    .line 107
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

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
    .locals 3

    .line 113
    iget v0, p0, Lcom/bumptech/glide/load/engine/a/a$a;->b:I

    iget v1, p0, Lcom/bumptech/glide/load/engine/a/a$a;->c:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/a$a;->d:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/a/a;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
