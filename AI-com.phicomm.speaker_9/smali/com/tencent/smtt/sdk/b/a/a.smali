.class public Lcom/tencent/smtt/sdk/b/a/a;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/tencent/smtt/sdk/b/a/e;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/smtt/sdk/b/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/smtt/sdk/b/a/e;

.field private c:Landroid/content/Intent;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/smtt/sdk/b/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/smtt/sdk/b/a/e;

.field private g:Landroid/os/Handler;

.field private h:[Ljava/lang/String;

.field private i:Lcom/tencent/smtt/sdk/b/a/a;

.field private j:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/smtt/sdk/b/a/e;Lcom/tencent/smtt/sdk/b/a/e;Lcom/tencent/smtt/sdk/b/a/f;Landroid/widget/ListView;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/tencent/smtt/sdk/b/a/e;",
            "Lcom/tencent/smtt/sdk/b/a/e;",
            "Lcom/tencent/smtt/sdk/b/a/f;",
            "Landroid/widget/ListView;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/smtt/sdk/b/a/a;->b:Lcom/tencent/smtt/sdk/b/a/e;

    iput-object v1, p0, Lcom/tencent/smtt/sdk/b/a/a;->c:Landroid/content/Intent;

    iput-object v1, p0, Lcom/tencent/smtt/sdk/b/a/a;->h:[Ljava/lang/String;

    iput-object p0, p0, Lcom/tencent/smtt/sdk/b/a/a;->i:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-virtual {p0, p5}, Lcom/tencent/smtt/sdk/b/a/a;->a(Lcom/tencent/smtt/sdk/b/a/f;)V

    invoke-virtual {p0, p6}, Lcom/tencent/smtt/sdk/b/a/a;->a(Landroid/widget/ListView;)V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/b/a/a;->c:Landroid/content/Intent;

    const-string p2, "com.tencent.rtxlite"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/a/d;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/tencent/smtt/sdk/b/a/a;->f:Lcom/tencent/smtt/sdk/b/a/e;

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/tencent/smtt/sdk/b/a/a;->f:Lcom/tencent/smtt/sdk/b/a/e;

    :goto_1
    iput-object p7, p0, Lcom/tencent/smtt/sdk/b/a/a;->j:Lcom/tencent/smtt/sdk/ValueCallback;

    new-instance p2, Lcom/tencent/smtt/sdk/b/a/b;

    invoke-direct {p2, p0}, Lcom/tencent/smtt/sdk/b/a/b;-><init>(Lcom/tencent/smtt/sdk/b/a/a;)V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/b/a/a;->g:Landroid/os/Handler;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/b/a/a;->h:[Ljava/lang/String;

    iget-object p2, p0, Lcom/tencent/smtt/sdk/b/a/a;->h:[Ljava/lang/String;

    const-string p3, "x5_tbs_activity_picker_recommend_to_trim"

    invoke-static {p3}, Lcom/tencent/smtt/sdk/b/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    iget-object p2, p0, Lcom/tencent/smtt/sdk/b/a/a;->h:[Ljava/lang/String;

    const/4 p3, 0x1

    const-string p5, "x5_tbs_activity_picker_recommend_with_chinese_brace_to_trim"

    invoke-static {p5}, Lcom/tencent/smtt/sdk/b/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p2, p3

    invoke-virtual {p0, p1, p4}, Lcom/tencent/smtt/sdk/b/a/a;->a(Landroid/content/Context;Lcom/tencent/smtt/sdk/b/a/e;)V

    return-void
.end method

.method private a(F)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/b/a/f;

    if-nez v0, :cond_0

    float-to-int p1, p1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/b/a/f;->a(F)I

    move-result p1

    return p1
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v7, v3, [I

    const v8, 0x10100a7

    const/4 v9, 0x0

    aput v8, v7, v9

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const/16 v11, 0x29

    invoke-static {v11, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-direct {v10, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7, v10}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v7, v3, [I

    const v10, -0x10100a7

    aput v10, v7, v9

    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v12, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x42800000    # 64.0f

    invoke-direct {v0, v12}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v12

    invoke-direct {v7, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v12, 0x42400000    # 48.0f

    invoke-direct {v0, v12}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v13

    invoke-direct {v0, v12}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v12

    invoke-direct {v7, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x9

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v13, 0xf

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v14, 0x41000000    # 8.0f

    invoke-direct {v0, v14}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v15

    invoke-virtual {v7, v15, v15, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x65

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v15, 0x65

    invoke-virtual {v7, v3, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v15, 0x1d

    invoke-static {v15, v15, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v15, 0x41880000    # 17.0f

    invoke-virtual {v7, v3, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v15, 0x66

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v15, "x5_tbs_wechat_activity_picker_label_recommend"

    invoke-static {v15}, Lcom/tencent/smtt/sdk/b/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v15, 0xd9

    invoke-static {v15, v15, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v15, 0x41600000    # 14.0f

    invoke-virtual {v7, v3, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v10, 0x67

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-direct {v0, v10}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v10

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-direct {v0, v8}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v8

    invoke-direct {v7, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v7, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {v0, v15}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v8

    invoke-virtual {v7, v9, v9, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v7, "x5_tbs_activity_picker_check"

    invoke-static {v7}, Lcom/tencent/smtt/sdk/b/a/i;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0x68

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x41f80000    # 31.0f

    invoke-direct {v0, v7}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v7

    invoke-direct {v1, v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-direct {v0, v14}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v5

    invoke-virtual {v1, v9, v9, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x32

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v4, v3, v15}, Landroid/widget/Button;->setTextSize(IF)V

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v0, v5}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v5

    int-to-float v5, v5

    new-instance v7, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v8, 0x8

    new-array v8, v8, [F

    aput v5, v8, v9

    aput v5, v8, v3

    const/4 v10, 0x2

    aput v5, v8, v10

    const/4 v10, 0x3

    aput v5, v8, v10

    const/4 v10, 0x4

    aput v5, v8, v10

    const/4 v10, 0x5

    aput v5, v8, v10

    const/4 v10, 0x6

    aput v5, v8, v10

    const/4 v10, 0x7

    aput v5, v8, v10

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v5, v10}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/16 v10, 0x80

    const/16 v13, 0x45

    const/16 v15, 0xc0

    const/16 v14, 0x1a

    invoke-static {v10, v13, v15, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-array v8, v3, [I

    const v10, -0x101009e

    aput v10, v8, v9

    invoke-virtual {v1, v8, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/16 v10, 0x84

    invoke-static {v11, v10, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-array v8, v3, [I

    const v10, 0x10100a7

    aput v10, v8, v9

    invoke-virtual {v1, v8, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const/16 v8, 0x45

    const/16 v10, 0xc0

    const/16 v11, 0x1a

    invoke-static {v8, v10, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    new-array v3, v3, [I

    const v7, -0x10100a7

    aput v7, v3, v9

    invoke-virtual {v1, v3, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x6b

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setId(I)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v3

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/b/a/a;->a(F)I

    move-result v1

    invoke-virtual {v4, v3, v9, v1, v9}, Landroid/widget/Button;->setPadding(IIII)V

    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/16 v1, 0x69

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/b/a/a;)Lcom/tencent/smtt/sdk/b/a/e;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/b/a/a;->f:Lcom/tencent/smtt/sdk/b/a/e;

    return-object p0
.end method

.method private a(Lcom/tencent/smtt/sdk/b/a/e;Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_b

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v4, 0x66

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x67

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/16 v6, 0x68

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v7, 0x69

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x6a

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x6b

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    const/16 v10, 0x6c

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iget-object v11, v0, Lcom/tencent/smtt/sdk/b/a/a;->k:Ljava/util/Map;

    invoke-virtual {v1, v11}, Lcom/tencent/smtt/sdk/b/a/e;->a(Ljava/util/Map;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0xa0

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/smtt/sdk/b/a/e;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, ""

    invoke-virtual {v11, v3, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v11, v0, Lcom/tencent/smtt/sdk/b/a/a;->h:[Ljava/lang/String;

    array-length v13, v11

    move-object v14, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v13, :cond_2

    aget-object v15, v11, v3

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1

    const-string v12, ""

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/smtt/sdk/b/a/e;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/b/a/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/smtt/sdk/b/a/a;->c:Landroid/content/Intent;

    const/high16 v11, 0x10000

    invoke-virtual {v3, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/smtt/sdk/b/a/e;->c()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/b/a/e;->a(Landroid/content/pm/ResolveInfo;)V

    :cond_4
    new-instance v3, Lcom/tencent/smtt/sdk/b/a/c;

    invoke-direct {v3, v0}, Lcom/tencent/smtt/sdk/b/a/c;-><init>(Lcom/tencent/smtt/sdk/b/a/a;)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "com.tencent.mtt"

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/smtt/sdk/b/a/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/smtt/sdk/b/a/e;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v7, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, v0, Lcom/tencent/smtt/sdk/b/a/a;->b:Lcom/tencent/smtt/sdk/b/a/e;

    if-ne v1, v5, :cond_6

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v8, :cond_7

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v8, :cond_7

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    invoke-virtual {v9, v4}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v10, :cond_a

    invoke-virtual {v10, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v8, :cond_9

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setVisibility(I)V

    const-string v4, "x5_tbs_wechat_activity_picker_label_download"

    invoke-static {v4}, Lcom/tencent/smtt/sdk/b/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v3, Lcom/tencent/smtt/sdk/b/a/d;

    invoke-direct {v3, v0}, Lcom/tencent/smtt/sdk/b/a/d;-><init>(Lcom/tencent/smtt/sdk/b/a/a;)V

    invoke-virtual {v9, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/b/a/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/b/a/f;->a(Z)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x2000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/tencent/smtt/sdk/b/a/a;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/b/a/a;->j:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/tencent/smtt/sdk/b/a/e;)V
    .locals 1

    iput-object p2, p0, Lcom/tencent/smtt/sdk/b/a/a;->b:Lcom/tencent/smtt/sdk/b/a/e;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->b:Lcom/tencent/smtt/sdk/b/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/b/a/e;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/b/a/a;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/smtt/sdk/b/a/a;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/b/a/a;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/tencent/smtt/sdk/b/a/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->b:Lcom/tencent/smtt/sdk/b/a/e;

    return-object v0
.end method

.method public a(I)Lcom/tencent/smtt/sdk/b/a/e;
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/smtt/sdk/b/a/e;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Landroid/content/Context;Lcom/tencent/smtt/sdk/b/a/e;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/a;->c:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/tencent/smtt/sdk/b/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/tencent/smtt/sdk/b/a/e;

    invoke-direct {v5, p1, v4}, Lcom/tencent/smtt/sdk/b/a/e;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iget-object v6, p0, Lcom/tencent/smtt/sdk/b/a/a;->f:Lcom/tencent/smtt/sdk/b/a/e;

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/tencent/smtt/sdk/b/a/a;->f:Lcom/tencent/smtt/sdk/b/a/e;

    invoke-virtual {v6}, Lcom/tencent/smtt/sdk/b/a/e;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/tencent/smtt/sdk/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v2, v7

    goto :goto_1

    :cond_2
    const-string v6, "com.tencent.mtt"

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tencent/smtt/sdk/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/tencent/smtt/sdk/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v5}, Lcom/tencent/smtt/sdk/b/a/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/b/a/e;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, v5}, Lcom/tencent/smtt/sdk/b/a/a;->b(Landroid/content/Context;Lcom/tencent/smtt/sdk/b/a/e;)V

    move v3, v7

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    iget-object p2, p0, Lcom/tencent/smtt/sdk/b/a/a;->f:Lcom/tencent/smtt/sdk/b/a/e;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/tencent/smtt/sdk/b/a/a;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->f:Lcom/tencent/smtt/sdk/b/a/e;

    invoke-virtual {p2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_5
    if-nez v3, :cond_6

    iget-object p2, p0, Lcom/tencent/smtt/sdk/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    iget-object p2, p0, Lcom/tencent/smtt/sdk/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/smtt/sdk/b/a/e;

    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/b/a/a;->b(Landroid/content/Context;Lcom/tencent/smtt/sdk/b/a/e;)V

    :cond_6
    return-void
.end method

.method a(Landroid/widget/ListView;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method a(Lcom/tencent/smtt/sdk/b/a/f;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method b()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/a;->f:Lcom/tencent/smtt/sdk/b/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/a;->f:Lcom/tencent/smtt/sdk/b/a/e;

    invoke-direct {p0, v1, v0}, Lcom/tencent/smtt/sdk/b/a/a;->a(Lcom/tencent/smtt/sdk/b/a/e;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/b/a/a;->a(I)Lcom/tencent/smtt/sdk/b/a/e;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/b/a/a;->a(I)Lcom/tencent/smtt/sdk/b/a/e;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/b/a/a;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/b/a/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/b/a/a;->a(Lcom/tencent/smtt/sdk/b/a/e;Landroid/view/View;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/tencent/smtt/sdk/b/a/e;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/tencent/smtt/sdk/b/a/e;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/a;->b:Lcom/tencent/smtt/sdk/b/a/e;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    :cond_1
    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/a;->b:Lcom/tencent/smtt/sdk/b/a/e;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/tencent/smtt/sdk/b/a/a;->b(Landroid/content/Context;Lcom/tencent/smtt/sdk/b/a/e;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/tencent/smtt/sdk/b/a/a;->a(Lcom/tencent/smtt/sdk/b/a/e;Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/a;->b:Lcom/tencent/smtt/sdk/b/a/e;

    invoke-direct {p0, v0, p1}, Lcom/tencent/smtt/sdk/b/a/a;->a(Lcom/tencent/smtt/sdk/b/a/e;Landroid/view/View;)V

    :cond_2
    return-void
.end method
