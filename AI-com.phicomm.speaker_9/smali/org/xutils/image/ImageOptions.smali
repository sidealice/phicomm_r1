.class public Lorg/xutils/image/ImageOptions;
.super Ljava/lang/Object;
.source "ImageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/image/ImageOptions$Builder;,
        Lorg/xutils/image/ImageOptions$ParamsBuilder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lorg/xutils/image/ImageOptions;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/graphics/Bitmap$Config;

.field private l:Z

.field private m:I

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Z

.field private r:Landroid/widget/ImageView$ScaleType;

.field private s:Landroid/widget/ImageView$ScaleType;

.field private t:Z

.field private u:Landroid/view/animation/Animation;

.field private v:Z

.field private w:Lorg/xutils/image/ImageOptions$ParamsBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lorg/xutils/image/ImageOptions;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions;-><init>()V

    sput-object v0, Lorg/xutils/image/ImageOptions;->DEFAULT:Lorg/xutils/image/ImageOptions;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 25
    iput v0, p0, Lorg/xutils/image/ImageOptions;->b:I

    .line 26
    iput v0, p0, Lorg/xutils/image/ImageOptions;->c:I

    .line 27
    iput v0, p0, Lorg/xutils/image/ImageOptions;->d:I

    .line 28
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->e:Z

    .line 30
    iput v0, p0, Lorg/xutils/image/ImageOptions;->f:I

    .line 31
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->g:Z

    .line 32
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->h:Z

    .line 33
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->i:Z

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->j:Z

    .line 35
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    .line 38
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->l:Z

    .line 42
    iput v0, p0, Lorg/xutils/image/ImageOptions;->m:I

    .line 43
    iput v0, p0, Lorg/xutils/image/ImageOptions;->n:I

    const/4 v2, 0x0

    .line 44
    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->o:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->p:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->q:Z

    .line 48
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->r:Landroid/widget/ImageView$ScaleType;

    .line 49
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iput-object v3, p0, Lorg/xutils/image/ImageOptions;->s:Landroid/widget/ImageView$ScaleType;

    .line 51
    iput-boolean v0, p0, Lorg/xutils/image/ImageOptions;->t:Z

    .line 52
    iput-object v2, p0, Lorg/xutils/image/ImageOptions;->u:Landroid/view/animation/Animation;

    .line 56
    iput-boolean v1, p0, Lorg/xutils/image/ImageOptions;->v:Z

    return-void
.end method

.method private static a(Landroid/widget/ImageView;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 280
    :try_start_0
    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    .line 281
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 282
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const p1, 0x7fffffff

    if-ge p0, p1, :cond_0

    move v0, p0

    :catch_0
    :cond_0
    return v0
.end method

.method static synthetic a(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 19
    iput p1, p0, Lorg/xutils/image/ImageOptions;->c:I

    return p1
.end method

.method static synthetic a(Lorg/xutils/image/ImageOptions;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    return-object p1
.end method

.method static synthetic a(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->o:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lorg/xutils/image/ImageOptions;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->u:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic a(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->r:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic a(Lorg/xutils/image/ImageOptions;Lorg/xutils/image/ImageOptions$ParamsBuilder;)Lorg/xutils/image/ImageOptions$ParamsBuilder;
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->w:Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object p1
.end method

.method static synthetic a(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->e:Z

    return p1
.end method

.method static synthetic b(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 19
    iput p1, p0, Lorg/xutils/image/ImageOptions;->d:I

    return p1
.end method

.method static synthetic b(Lorg/xutils/image/ImageOptions;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->p:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic b(Lorg/xutils/image/ImageOptions;Landroid/widget/ImageView$ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 19
    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->s:Landroid/widget/ImageView$ScaleType;

    return-object p1
.end method

.method static synthetic b(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->g:Z

    return p1
.end method

.method static synthetic c(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 19
    iput p1, p0, Lorg/xutils/image/ImageOptions;->f:I

    return p1
.end method

.method static synthetic c(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->h:Z

    return p1
.end method

.method static synthetic d(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 19
    iput p1, p0, Lorg/xutils/image/ImageOptions;->m:I

    return p1
.end method

.method static synthetic d(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->i:Z

    return p1
.end method

.method static synthetic e(Lorg/xutils/image/ImageOptions;I)I
    .locals 0

    .line 19
    iput p1, p0, Lorg/xutils/image/ImageOptions;->n:I

    return p1
.end method

.method static synthetic e(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->l:Z

    return p1
.end method

.method static synthetic f(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->t:Z

    return p1
.end method

.method static synthetic g(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->q:Z

    return p1
.end method

.method static synthetic h(Lorg/xutils/image/ImageOptions;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lorg/xutils/image/ImageOptions;->v:Z

    return p1
.end method


# virtual methods
.method final a(Landroid/widget/ImageView;)V
    .locals 7

    .line 64
    iget v0, p0, Lorg/xutils/image/ImageOptions;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/xutils/image/ImageOptions;->d:I

    if-lez v0, :cond_0

    .line 65
    iget p1, p0, Lorg/xutils/image/ImageOptions;->c:I

    iput p1, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 66
    iget p1, p0, Lorg/xutils/image/ImageOptions;->d:I

    iput p1, p0, Lorg/xutils/image/ImageOptions;->b:I

    return-void

    .line 70
    :cond_0
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getScreenWidth()I

    move-result v0

    .line 71
    invoke-static {}, Lorg/xutils/common/util/DensityUtil;->getScreenHeight()I

    move-result v1

    .line 73
    iget v2, p0, Lorg/xutils/image/ImageOptions;->c:I

    const/4 v3, 0x0

    if-gez v2, :cond_1

    mul-int/lit8 v2, v0, 0x3

    .line 74
    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 75
    iput-boolean v3, p0, Lorg/xutils/image/ImageOptions;->j:Z

    .line 77
    :cond_1
    iget v2, p0, Lorg/xutils/image/ImageOptions;->d:I

    if-gez v2, :cond_2

    mul-int/lit8 v2, v1, 0x3

    .line 78
    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/xutils/image/ImageOptions;->b:I

    .line 79
    iput-boolean v3, p0, Lorg/xutils/image/ImageOptions;->j:Z

    :cond_2
    if-nez p1, :cond_3

    .line 82
    iget v2, p0, Lorg/xutils/image/ImageOptions;->a:I

    if-gtz v2, :cond_3

    iget v2, p0, Lorg/xutils/image/ImageOptions;->b:I

    if-gtz v2, :cond_3

    .line 83
    iput v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 84
    iput v1, p0, Lorg/xutils/image/ImageOptions;->b:I

    goto :goto_4

    .line 86
    :cond_3
    iget v2, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 87
    iget v3, p0, Lorg/xutils/image/ImageOptions;->b:I

    if-eqz p1, :cond_9

    .line 90
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v5, -0x2

    if-gtz v2, :cond_5

    .line 94
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v6, :cond_4

    .line 95
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    iget v6, p0, Lorg/xutils/image/ImageOptions;->c:I

    if-gtz v6, :cond_5

    .line 97
    iput v2, p0, Lorg/xutils/image/ImageOptions;->c:I

    goto :goto_0

    .line 99
    :cond_4
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v5, :cond_5

    .line 100
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    :cond_5
    :goto_0
    if-gtz v3, :cond_7

    .line 105
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v6, :cond_6

    .line 106
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    iget v4, p0, Lorg/xutils/image/ImageOptions;->d:I

    if-gtz v4, :cond_7

    .line 108
    iput v3, p0, Lorg/xutils/image/ImageOptions;->d:I

    goto :goto_1

    .line 110
    :cond_6
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v5, :cond_7

    .line 111
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    :cond_7
    :goto_1
    if-gtz v2, :cond_8

    const-string v2, "mMaxWidth"

    .line 116
    invoke-static {p1, v2}, Lorg/xutils/image/ImageOptions;->a(Landroid/widget/ImageView;Ljava/lang/String;)I

    move-result v2

    :cond_8
    if-gtz v3, :cond_9

    const-string v3, "mMaxHeight"

    .line 117
    invoke-static {p1, v3}, Lorg/xutils/image/ImageOptions;->a(Landroid/widget/ImageView;Ljava/lang/String;)I

    move-result p1

    move v3, p1

    :cond_9
    if-gtz v2, :cond_a

    goto :goto_2

    :cond_a
    move v0, v2

    :goto_2
    if-gtz v3, :cond_b

    goto :goto_3

    :cond_b
    move v1, v3

    .line 123
    :goto_3
    iput v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    .line 124
    iput v1, p0, Lorg/xutils/image/ImageOptions;->b:I

    :goto_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 231
    :cond_1
    check-cast p1, Lorg/xutils/image/ImageOptions;

    .line 233
    iget v2, p0, Lorg/xutils/image/ImageOptions;->a:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->a:I

    if-eq v2, v3, :cond_2

    return v1

    .line 234
    :cond_2
    iget v2, p0, Lorg/xutils/image/ImageOptions;->b:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->b:I

    if-eq v2, v3, :cond_3

    return v1

    .line 235
    :cond_3
    iget v2, p0, Lorg/xutils/image/ImageOptions;->c:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->c:I

    if-eq v2, v3, :cond_4

    return v1

    .line 236
    :cond_4
    iget v2, p0, Lorg/xutils/image/ImageOptions;->d:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->d:I

    if-eq v2, v3, :cond_5

    return v1

    .line 237
    :cond_5
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->e:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->e:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 238
    :cond_6
    iget v2, p0, Lorg/xutils/image/ImageOptions;->f:I

    iget v3, p1, Lorg/xutils/image/ImageOptions;->f:I

    if-eq v2, v3, :cond_7

    return v1

    .line 239
    :cond_7
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->g:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->g:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 240
    :cond_8
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->h:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->h:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 241
    :cond_9
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->i:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->i:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 242
    :cond_a
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->j:Z

    iget-boolean v3, p1, Lorg/xutils/image/ImageOptions;->j:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 243
    :cond_b
    iget-object v2, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    if-ne v2, p1, :cond_c

    goto :goto_0

    :cond_c
    move v0, v1

    :goto_0
    return v0

    :cond_d
    :goto_1
    return v1
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->u:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getFailureDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->p:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/xutils/image/ImageOptions;->n:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 190
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lorg/xutils/image/ImageOptions;->n:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->p:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/xutils/image/ImageOptions;->p:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getHeight()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/xutils/image/ImageOptions;->d:I

    return v0
.end method

.method public getImageScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->s:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getLoadingDrawable(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->o:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/xutils/image/ImageOptions;->m:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 179
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lorg/xutils/image/ImageOptions;->m:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/image/ImageOptions;->o:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/xutils/image/ImageOptions;->o:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public getMaxHeight()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/xutils/image/ImageOptions;->b:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 129
    iget v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    return v0
.end method

.method public getParamsBuilder()Lorg/xutils/image/ImageOptions$ParamsBuilder;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->w:Lorg/xutils/image/ImageOptions$ParamsBuilder;

    return-object v0
.end method

.method public getPlaceholderScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->r:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getRadius()I
    .locals 1

    .line 149
    iget v0, p0, Lorg/xutils/image/ImageOptions;->f:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/xutils/image/ImageOptions;->c:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 249
    iget v0, p0, Lorg/xutils/image/ImageOptions;->a:I

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    .line 250
    iget v2, p0, Lorg/xutils/image/ImageOptions;->b:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 251
    iget v2, p0, Lorg/xutils/image/ImageOptions;->c:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 252
    iget v2, p0, Lorg/xutils/image/ImageOptions;->d:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 253
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->e:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 254
    iget v2, p0, Lorg/xutils/image/ImageOptions;->f:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 255
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->g:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 256
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->h:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 257
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->i:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 258
    iget-boolean v2, p0, Lorg/xutils/image/ImageOptions;->j:Z

    add-int/2addr v0, v2

    mul-int/2addr v1, v0

    .line 259
    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public isAutoRotate()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->i:Z

    return v0
.end method

.method public isCircular()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->h:Z

    return v0
.end method

.method public isCompress()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->j:Z

    return v0
.end method

.method public isCrop()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->e:Z

    return v0
.end method

.method public isFadeIn()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->t:Z

    return v0
.end method

.method public isForceLoadingDrawable()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->q:Z

    return v0
.end method

.method public isIgnoreGif()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->l:Z

    return v0
.end method

.method public isSquare()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->g:Z

    return v0
.end method

.method public isUseMemCache()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lorg/xutils/image/ImageOptions;->v:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    iget v1, p0, Lorg/xutils/image/ImageOptions;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget v1, p0, Lorg/xutils/image/ImageOptions;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget v1, p0, Lorg/xutils/image/ImageOptions;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget v1, p0, Lorg/xutils/image/ImageOptions;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget v1, p0, Lorg/xutils/image/ImageOptions;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lorg/xutils/image/ImageOptions;->k:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xutils/image/ImageOptions;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
