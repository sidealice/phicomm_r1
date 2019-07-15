.class Landroid/support/v7/widget/n;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# instance fields
.field final a:Landroid/widget/TextView;

.field private b:Landroid/support/v7/widget/am;

.field private c:Landroid/support/v7/widget/am;

.field private d:Landroid/support/v7/widget/am;

.field private e:Landroid/support/v7/widget/am;

.field private final f:Landroid/support/v7/widget/p;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private g:I

.field private h:Landroid/graphics/Typeface;

.field private i:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Landroid/support/v7/widget/n;->g:I

    .line 72
    iput-object p1, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    .line 73
    new-instance p1, Landroid/support/v7/widget/p;

    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Landroid/support/v7/widget/p;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    return-void
.end method

.method protected static a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/am;
    .locals 0

    .line 332
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/h;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 334
    new-instance p1, Landroid/support/v7/widget/am;

    invoke-direct {p1}, Landroid/support/v7/widget/am;-><init>()V

    const/4 p2, 0x1

    .line 335
    iput-boolean p2, p1, Landroid/support/v7/widget/am;->d:Z

    .line 336
    iput-object p0, p1, Landroid/support/v7/widget/am;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/widget/TextView;)Landroid/support/v7/widget/n;
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 53
    new-instance v0, Landroid/support/v7/widget/o;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/o;-><init>(Landroid/widget/TextView;)V

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Landroid/support/v7/widget/n;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/n;-><init>(Landroid/widget/TextView;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/support/v7/widget/ao;)V
    .locals 4

    .line 211
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroid/support/v7/widget/n;->g:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/ao;->a(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/n;->g:I

    .line 213
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 214
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    sget p1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 253
    iput-boolean v2, p0, Landroid/support/v7/widget/n;->i:Z

    .line 254
    sget p1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1, v1}, Landroid/support/v7/widget/ao;->a(II)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    goto :goto_0

    .line 261
    :pswitch_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    goto :goto_0

    .line 257
    :pswitch_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    .line 216
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_2

    :cond_3
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 219
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_5

    .line 220
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-direct {p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 221
    new-instance v3, Landroid/support/v7/widget/n$1;

    invoke-direct {v3, p0, p1}, Landroid/support/v7/widget/n$1;-><init>(Landroid/support/v7/widget/n;Ljava/lang/ref/WeakReference;)V

    .line 234
    :try_start_0
    iget p1, p0, Landroid/support/v7/widget/n;->g:I

    invoke-virtual {p2, v0, p1, v3}, Landroid/support/v7/widget/ao;->a(IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    .line 236
    iget-object p1, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Landroid/support/v7/widget/n;->i:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    if-nez p1, :cond_6

    .line 243
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ao;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 245
    iget p2, p0, Landroid/support/v7/widget/n;->g:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Landroid/support/v7/widget/n;Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/n;->a(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method

.method private a(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 272
    iget-boolean v0, p0, Landroid/support/v7/widget/n;->i:Z

    if-eqz v0, :cond_0

    .line 273
    iput-object p2, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    .line 274
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 276
    iget v0, p0, Landroid/support/v7/widget/n;->g:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method private b(IF)V
    .locals 1

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->a(IF)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 314
    iget-object v0, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/am;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/am;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/am;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/n;->e:Landroid/support/v7/widget/am;

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 317
    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/am;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/n;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/am;)V

    const/4 v1, 0x1

    .line 318
    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/am;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/n;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/am;)V

    const/4 v1, 0x2

    .line 319
    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/am;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/n;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/am;)V

    const/4 v1, 0x3

    .line 320
    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/n;->e:Landroid/support/v7/widget/am;

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/n;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/am;)V

    :cond_1
    return-void
.end method

.method a(I)V
    .locals 1

    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->a(I)V

    return-void
.end method

.method a(IF)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 353
    sget-boolean v0, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_0

    .line 354
    invoke-virtual {p0}, Landroid/support/v7/widget/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/n;->b(IF)V

    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/p;->a(IIII)V

    return-void
.end method

.method a(Landroid/content/Context;I)V
    .locals 2

    .line 282
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/ao;

    move-result-object p2

    .line 284
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/ao;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/n;->a(Z)V

    .line 291
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 292
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 296
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/ao;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 302
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/n;->a(Landroid/content/Context;Landroid/support/v7/widget/ao;)V

    .line 303
    invoke-virtual {p2}, Landroid/support/v7/widget/ao;->a()V

    .line 304
    iget-object p1, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    .line 305
    iget-object p1, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    iget-object p2, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    iget v0, p0, Landroid/support/v7/widget/n;->g:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    return-void
.end method

.method final a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/am;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 326
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/h;->a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/am;[I)V

    :cond_0
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    invoke-static {}, Landroid/support/v7/widget/h;->a()Landroid/support/v7/widget/h;

    move-result-object v1

    .line 82
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v3, 0x0

    invoke-static {v0, p1, v2, p2, v3}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ao;

    move-result-object v2

    .line 84
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/support/v7/widget/ao;->g(II)I

    move-result v4

    .line 86
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 88
    invoke-virtual {v2, v6, v3}, Landroid/support/v7/widget/ao;->g(II)I

    move-result v6

    .line 87
    invoke-static {v0, v1, v6}, Landroid/support/v7/widget/n;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/am;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/n;->b:Landroid/support/v7/widget/am;

    .line 90
    :cond_0
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 92
    invoke-virtual {v2, v6, v3}, Landroid/support/v7/widget/ao;->g(II)I

    move-result v6

    .line 91
    invoke-static {v0, v1, v6}, Landroid/support/v7/widget/n;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/am;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/n;->c:Landroid/support/v7/widget/am;

    .line 94
    :cond_1
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 96
    invoke-virtual {v2, v6, v3}, Landroid/support/v7/widget/ao;->g(II)I

    move-result v6

    .line 95
    invoke-static {v0, v1, v6}, Landroid/support/v7/widget/n;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/am;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v7/widget/n;->d:Landroid/support/v7/widget/am;

    .line 98
    :cond_2
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    sget v6, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 100
    invoke-virtual {v2, v6, v3}, Landroid/support/v7/widget/ao;->g(II)I

    move-result v6

    .line 99
    invoke-static {v0, v1, v6}, Landroid/support/v7/widget/n;->a(Landroid/content/Context;Landroid/support/v7/widget/h;I)Landroid/support/v7/widget/am;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/n;->e:Landroid/support/v7/widget/am;

    .line 102
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/ao;->a()V

    .line 107
    iget-object v1, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    .line 108
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    const/16 v2, 0x17

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_9

    .line 117
    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v0, v4, v5}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;I[I)Landroid/support/v7/widget/ao;

    move-result-object v4

    if-nez v1, :cond_4

    .line 118
    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/ao;->a(IZ)Z

    move-result v5

    move v8, v5

    move v5, v6

    goto :goto_0

    :cond_4
    move v5, v3

    move v8, v5

    .line 123
    :goto_0
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/n;->a(Landroid/content/Context;Landroid/support/v7/widget/ao;)V

    .line 124
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v9, v2, :cond_8

    .line 127
    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 128
    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/ao;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    goto :goto_1

    :cond_5
    move-object v9, v7

    .line 130
    :goto_1
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v4, v10}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 131
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v4, v10}, Landroid/support/v7/widget/ao;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    goto :goto_2

    :cond_6
    move-object v10, v7

    .line 134
    :goto_2
    sget v11, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 135
    sget v7, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v4, v7}, Landroid/support/v7/widget/ao;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    :cond_7
    move-object v12, v9

    move-object v9, v7

    move-object v7, v12

    goto :goto_3

    :cond_8
    move-object v9, v7

    move-object v10, v9

    .line 139
    :goto_3
    invoke-virtual {v4}, Landroid/support/v7/widget/ao;->a()V

    goto :goto_4

    :cond_9
    move v5, v3

    move v8, v5

    move-object v9, v7

    move-object v10, v9

    .line 143
    :goto_4
    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v0, p1, v4, p2, v3}, Landroid/support/v7/widget/ao;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/ao;

    move-result-object v4

    if-nez v1, :cond_a

    .line 145
    sget v11, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v11}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 147
    sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/widget/ao;->a(IZ)Z

    move-result v8

    move v5, v6

    .line 149
    :cond_a
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v2, :cond_d

    .line 152
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 153
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ao;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v7, v2

    .line 155
    :cond_b
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 156
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ao;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v10, v2

    .line 159
    :cond_c
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ao;->g(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 160
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ao;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    .line 165
    :cond_d
    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/n;->a(Landroid/content/Context;Landroid/support/v7/widget/ao;)V

    .line 166
    invoke-virtual {v4}, Landroid/support/v7/widget/ao;->a()V

    if-eqz v7, :cond_e

    .line 169
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    if-eqz v10, :cond_f

    .line 172
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_f
    if-eqz v9, :cond_10

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_10
    if-nez v1, :cond_11

    if-eqz v5, :cond_11

    .line 178
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/n;->a(Z)V

    .line 180
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    if-eqz v0, :cond_12

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v7/widget/n;->h:Landroid/graphics/Typeface;

    iget v2, p0, Landroid/support/v7/widget/n;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 184
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->a(Landroid/util/AttributeSet;I)V

    .line 186
    sget-boolean p1, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz p1, :cond_14

    .line 188
    iget-object p1, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {p1}, Landroid/support/v7/widget/p;->a()I

    move-result p1

    if-eqz p1, :cond_14

    .line 190
    iget-object p1, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    .line 191
    invoke-virtual {p1}, Landroid/support/v7/widget/p;->e()[I

    move-result-object p1

    .line 192
    array-length p2, p1

    if-lez p2, :cond_14

    .line 193
    iget-object p2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_13

    .line 196
    iget-object p1, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    iget-object p2, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    .line 197
    invoke-virtual {p2}, Landroid/support/v7/widget/p;->c()I

    move-result p2

    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    .line 198
    invoke-virtual {v0}, Landroid/support/v7/widget/p;->d()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    .line 199
    invoke-virtual {v1}, Landroid/support/v7/widget/p;->b()I

    move-result v1

    .line 196
    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_5

    .line 202
    :cond_13
    iget-object p2, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1, v3}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_14
    :goto_5
    return-void
.end method

.method a(Z)V
    .locals 1

    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/n;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method a(ZIIII)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 345
    sget-boolean p1, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez p1, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/support/v7/widget/n;->b()V

    :cond_0
    return-void
.end method

.method a([II)V
    .locals 1
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/p;->a([II)V

    return-void
.end method

.method b()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->f()V

    return-void
.end method

.method c()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->g()Z

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    .line 396
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->a()I

    move-result v0

    return v0
.end method

.method e()I
    .locals 1

    .line 400
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->b()I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    .line 404
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->c()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->d()I

    move-result v0

    return v0
.end method

.method h()[I
    .locals 1

    .line 412
    iget-object v0, p0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/p;

    invoke-virtual {v0}, Landroid/support/v7/widget/p;->e()[I

    move-result-object v0

    return-object v0
.end method
