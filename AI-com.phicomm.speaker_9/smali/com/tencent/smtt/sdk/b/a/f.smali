.class public Lcom/tencent/smtt/sdk/b/a/f;
.super Landroid/app/Dialog;


# static fields
.field private static l:F = -1.0f


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Lcom/tencent/smtt/sdk/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/smtt/sdk/ui/dialog/TBSActivityPicker$DialogButton;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/tencent/smtt/sdk/b/a/a;

.field private i:Ljava/lang/String;

.field private j:Landroid/content/Intent;

.field private k:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const v0, 0x103000b

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->g:Ljava/util/Map;

    const-string v0, "*/*"

    iput-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->k:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/a/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->isDefaultDialog:Z

    :cond_1
    const-string v2, "com.tencent.rtxlite"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->isDefaultDialog:Z

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/b/a/f;->b(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/b/a/f;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/b/a/f;->j:Landroid/content/Intent;

    iput-object p4, p0, Lcom/tencent/smtt/sdk/b/a/f;->e:Lcom/tencent/smtt/sdk/ValueCallback;

    const-string p2, "tbs_file_open_dialog_config"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/f;->k:Landroid/content/SharedPreferences;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-object p5, p0, Lcom/tencent/smtt/sdk/b/a/f;->i:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/b/a/f;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/b/a/f;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/smtt/sdk/b/a/f;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v6, 0x438c0000    # 280.0f

    invoke-virtual {v0, v6}, Lcom/tencent/smtt/sdk/b/a/f;->a(F)I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/tencent/smtt/sdk/b/a/f;->b:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42820000    # 65.0f

    invoke-virtual {v0, v8}, Lcom/tencent/smtt/sdk/b/a/f;->a(F)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v6, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x0

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v10, v0, Lcom/tencent/smtt/sdk/b/a/f;->b:Landroid/widget/TextView;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, v0, Lcom/tencent/smtt/sdk/b/a/f;->b:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/f;->b:Landroid/widget/TextView;

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v0, v10}, Lcom/tencent/smtt/sdk/b/a/f;->a(F)I

    move-result v12

    invoke-virtual {v6, v12, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/f;->b:Landroid/widget/TextView;

    const/16 v12, 0x45

    const/16 v13, 0xc0

    const/16 v14, 0x1a

    invoke-static {v12, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/f;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/f;->f:Ljava/lang/String;

    iget-object v10, v0, Lcom/tencent/smtt/sdk/b/a/f;->b:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/f;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v10, 0x3d

    invoke-static {v10, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/ListView;

    invoke-direct {v6, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/tencent/smtt/sdk/b/a/f;->a:Landroid/widget/ListView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v11, v0, Lcom/tencent/smtt/sdk/b/a/f;->a:Landroid/widget/ListView;

    invoke-virtual {v11, v6}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/f;->a:Landroid/widget/ListView;

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const/16 v13, 0x29

    invoke-static {v13, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v11, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/f;->a:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v6, v0, Lcom/tencent/smtt/sdk/b/a/f;->a:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v10, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v9, "x5_tbs_activity_picker_btn_container"

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/widget/Button;

    invoke-direct {v9, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/tencent/smtt/sdk/b/a/f;->c:Landroid/widget/Button;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42440000    # 49.0f

    invoke-virtual {v0, v10}, Lcom/tencent/smtt/sdk/b/a/f;->a(F)I

    move-result v11

    invoke-direct {v9, v7, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v11, v0, Lcom/tencent/smtt/sdk/b/a/f;->c:Landroid/widget/Button;

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v11, v5, [I

    const v14, 0x10100a7

    aput v14, v11, v4

    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v13, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-direct {v15, v14}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v11, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v11, v5, [I

    const v14, -0x10100a7

    aput v14, v11, v4

    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v11, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v11, v0, Lcom/tencent/smtt/sdk/b/a/f;->c:Landroid/widget/Button;

    invoke-virtual {v11, v9}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v0, Lcom/tencent/smtt/sdk/b/a/f;->c:Landroid/widget/Button;

    const-string v11, "x5_tbs_wechat_activity_picker_label_always"

    invoke-static {v11}, Lcom/tencent/smtt/sdk/b/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/tencent/smtt/sdk/b/a/f;->c:Landroid/widget/Button;

    const/16 v11, 0x1d

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v15

    invoke-virtual {v9, v15}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v9, v0, Lcom/tencent/smtt/sdk/b/a/f;->c:Landroid/widget/Button;

    const/high16 v15, 0x41880000    # 17.0f

    invoke-virtual {v9, v5, v15}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v9, v0, Lcom/tencent/smtt/sdk/b/a/f;->c:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, v15, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0xd9

    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/Button;

    invoke-direct {v8, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/tencent/smtt/sdk/b/a/f;->d:Landroid/widget/Button;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v10}, Lcom/tencent/smtt/sdk/b/a/f;->a(F)I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v7, v0, Lcom/tencent/smtt/sdk/b/a/f;->d:Landroid/widget/Button;

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v7, v5, [I

    const v8, 0x10100a7

    aput v8, v7, v4

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v13, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v7, v5, [I

    aput v14, v7, v4

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lcom/tencent/smtt/sdk/b/a/f;->d:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/tencent/smtt/sdk/b/a/f;->d:Landroid/widget/Button;

    const-string v4, "x5_tbs_wechat_activity_picker_label_once"

    invoke-static {v4}, Lcom/tencent/smtt/sdk/b/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/tencent/smtt/sdk/b/a/f;->d:Landroid/widget/Button;

    invoke-static {v11, v11, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, v0, Lcom/tencent/smtt/sdk/b/a/f;->d:Landroid/widget/Button;

    const/high16 v4, 0x41880000    # 17.0f

    invoke-virtual {v1, v5, v4}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v1, v0, Lcom/tencent/smtt/sdk/b/a/f;->d:Landroid/widget/Button;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/b/a/f;)Lcom/tencent/smtt/sdk/b/a/a;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/b/a/f;->h:Lcom/tencent/smtt/sdk/b/a/a;

    return-object p0
.end method

.method static synthetic b(Lcom/tencent/smtt/sdk/b/a/f;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/b/a/f;->j:Landroid/content/Intent;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/tencent/smtt/sdk/b/a/f;->l:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/tencent/smtt/sdk/b/a/f;->l:F

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/tencent/smtt/sdk/b/a/f;)Lcom/tencent/smtt/sdk/ValueCallback;
    .locals 0

    iget-object p0, p0, Lcom/tencent/smtt/sdk/b/a/f;->e:Lcom/tencent/smtt/sdk/ValueCallback;

    return-object p0
.end method

.method private c()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->h:Lcom/tencent/smtt/sdk/b/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->h:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/b/a/a;->a()Lcom/tencent/smtt/sdk/b/a/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    new-instance v0, Lcom/tencent/smtt/sdk/b/a/a;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/b/a/f;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/smtt/sdk/b/a/f;->j:Landroid/content/Intent;

    new-instance v4, Lcom/tencent/smtt/sdk/b/a/e;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/b/a/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "application_icon"

    invoke-static {v6}, Lcom/tencent/smtt/sdk/b/a/i;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v7, "QQ\u6d4f\u89c8\u5668"

    const-string v8, "com.tencent.mtt"

    invoke-direct {v4, v1, v6, v7, v8}, Lcom/tencent/smtt/sdk/b/a/e;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/smtt/sdk/b/a/f;->a:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/tencent/smtt/sdk/b/a/f;->e:Lcom/tencent/smtt/sdk/ValueCallback;

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lcom/tencent/smtt/sdk/b/a/a;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/smtt/sdk/b/a/e;Lcom/tencent/smtt/sdk/b/a/e;Lcom/tencent/smtt/sdk/b/a/f;Landroid/widget/ListView;Lcom/tencent/smtt/sdk/ValueCallback;)V

    iput-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->h:Lcom/tencent/smtt/sdk/b/a/a;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/f;->h:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 1

    sget v0, Lcom/tencent/smtt/sdk/b/a/f;->l:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->k:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->k:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_tbs_picked_default_browser_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/smtt/sdk/b/a/f;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->k:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_tbs_picked_default_browser_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/smtt/sdk/b/a/f;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->c:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/b/a/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/b/a/f;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/b/a/f;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/b/a/f;->c()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->c:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/smtt/sdk/b/a/g;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/b/a/g;-><init>(Lcom/tencent/smtt/sdk/b/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/f;->d:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/smtt/sdk/b/a/h;

    invoke-direct {v1, p0}, Lcom/tencent/smtt/sdk/b/a/h;-><init>(Lcom/tencent/smtt/sdk/b/a/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/b/a/f;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/b/a/f;->b()V

    return-void
.end method
