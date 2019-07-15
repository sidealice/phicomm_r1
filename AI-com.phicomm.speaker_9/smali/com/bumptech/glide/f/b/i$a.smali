.class Lcom/bumptech/glide/f/b/i$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SquaringDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/f/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final b:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V
    .locals 0

    .line 217
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/bumptech/glide/f/b/i$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 219
    iput p2, p0, Lcom/bumptech/glide/f/b/i$a;->b:I

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/f/b/i$a;)V
    .locals 1

    .line 214
    iget-object v0, p1, Lcom/bumptech/glide/f/b/i$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    iget p1, p1, Lcom/bumptech/glide/f/b/i$a;->b:I

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/f/b/i$a;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/f/b/i$a;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/bumptech/glide/f/b/i$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object p0
.end method

.method static synthetic b(Lcom/bumptech/glide/f/b/i$a;)I
    .locals 0

    .line 209
    iget p0, p0, Lcom/bumptech/glide/f/b/i$a;->b:I

    return p0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/f/b/i$a;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 229
    new-instance v0, Lcom/bumptech/glide/f/b/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/bumptech/glide/f/b/i;-><init>(Lcom/bumptech/glide/f/b/i$a;Lcom/bumptech/glide/load/resource/a/b;Landroid/content/res/Resources;)V

    return-object v0
.end method
