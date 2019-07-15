.class public Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "AddSimilarQuestionActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/phicomm/speaker/presenter/r;

.field mEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09008f
    .end annotation
.end field

.field mTvDelete:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    const-string v1, ""

    .line 56
    iput-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b:Ljava/lang/String;

    .line 57
    iput v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->d:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->e:Ljava/util/List;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;II)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 356
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "inputType"

    .line 357
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;IILjava/lang/String;I)V
    .locals 2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    .line 372
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "inputType"

    .line 373
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "initialContent"

    .line 374
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "editPosition"

    .line 375
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;Ljava/util/List;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 261
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 263
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    .line 264
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 265
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 266
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060048

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 267
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    const/16 v6, 0x12

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    return p0
.end method

.method private b(I)V
    .locals 8

    .line 313
    new-instance v7, Lcom/phicomm/speaker/views/e;

    new-instance v6, Lcom/phicomm/speaker/activity/quesandans/a;

    invoke-direct {v6, p0}, Lcom/phicomm/speaker/activity/quesandans/a;-><init>(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)V

    const v3, 0x7f0f004d

    const/4 v4, 0x0

    const v5, 0x7f0f00b4

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;ILcom/phicomm/speaker/c/c;)V

    .line 318
    invoke-virtual {v7}, Lcom/phicomm/speaker/views/e;->show()V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->d:I

    return p0
.end method

.method private d()V
    .locals 2

    .line 135
    new-instance v0, Lcom/phicomm/speaker/presenter/r;

    new-instance v1, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$2;-><init>(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/r;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/q;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->f:Lcom/phicomm/speaker/presenter/r;

    return-void
.end method

.method private k(I)V
    .locals 8

    .line 322
    new-instance v7, Lcom/phicomm/speaker/views/e;

    new-instance v6, Lcom/phicomm/speaker/activity/quesandans/b;

    invoke-direct {v6, p0}, Lcom/phicomm/speaker/activity/quesandans/b;-><init>(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)V

    const v3, 0x7f0f004d

    const/4 v4, 0x0

    const v5, 0x7f0f00b4

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;ILcom/phicomm/speaker/c/c;)V

    .line 330
    invoke-virtual {v7}, Lcom/phicomm/speaker/views/e;->show()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const v0, 0x7f0f020e

    .line 68
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->f(I)V

    const v0, 0x7f06006f

    .line 69
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->h(I)V

    const v0, 0x7f0f004d

    .line 70
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->c(I)V

    const v0, 0x7f06003e

    .line 71
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->d(I)V

    .line 72
    new-instance v0, Lcom/wangjie/shadowviewhelper/ShadowProperty;

    invoke-direct {v0}, Lcom/wangjie/shadowviewhelper/ShadowProperty;-><init>()V

    const/high16 v1, 0x77000000

    .line 73
    invoke-virtual {v0, v1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowColor(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 74
    invoke-static {v1}, Lcom/phicomm/speaker/f/a/a;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowDy(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 75
    invoke-static {v1}, Lcom/phicomm/speaker/f/a/a;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowRadius(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v0

    const/16 v1, 0x10

    .line 76
    invoke-virtual {v0, v1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowSide(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/wangjie/shadowviewhelper/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v2}, Lcom/wangjie/shadowviewhelper/a;-><init>(Lcom/wangjie/shadowviewhelper/ShadowProperty;IFF)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mTvDelete:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mTvDelete:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 81
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "inputType"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    .line 82
    iget v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    const/16 v2, 0x14

    if-ne v0, v1, :cond_0

    const v0, 0x7f0f0023

    .line 83
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->e(I)V

    .line 84
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f0f0118

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/phicomm/speaker/f/q;->a(Landroid/view/View;)V

    goto/16 :goto_4

    .line 87
    :cond_0
    iget v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    const v0, 0x7f0f00b9

    .line 88
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->e(I)V

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 90
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "initialContent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "initialContent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "editPosition"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->d:I

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mTvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 94
    :cond_3
    iget v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    const/4 v2, 0x3

    const v4, 0x7f0600ba

    const/16 v5, 0x64

    if-ne v0, v2, :cond_4

    const v0, 0x7f0f0021

    .line 95
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->e(I)V

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f0f0117

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/phicomm/speaker/f/q;->a(Landroid/view/View;)V

    goto :goto_4

    :cond_4
    const v0, 0x7f0f00b8

    .line 101
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->e(I)V

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 104
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "initialContent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "initialContent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, ""

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "editPosition"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->d:I

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mTvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_4
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity$1;-><init>(Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->d()V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 381
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->j(I)V

    return-void
.end method

.method final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    .line 324
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "content"

    const-string v0, ""

    .line 325
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "editPosition"

    .line 326
    iget v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->d:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    iget p2, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    invoke-virtual {p0, p2, p1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->setResult(ILandroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->finish()V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b001d

    .line 63
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->setContentView(I)V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 1

    .line 199
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->a(Landroid/widget/TextView;)V

    .line 201
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    iget p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const p1, 0x7f0f01c9

    .line 213
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 215
    invoke-static {p0}, Lcom/blankj/utilcode/util/b;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 216
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->a(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0f01c8

    .line 205
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 207
    invoke-static {p0}, Lcom/blankj/utilcode/util/b;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 208
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->a(Landroid/view/View;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/z;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 224
    iget p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0f002b

    .line 235
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 237
    invoke-static {p0}, Lcom/blankj/utilcode/util/b;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 238
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->a(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0f01f8

    .line 227
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 229
    invoke-static {p0}, Lcom/blankj/utilcode/util/b;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 230
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->a(Landroid/view/View;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->b(Landroid/view/View;)V

    .line 246
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->f:Lcom/phicomm/speaker/presenter/r;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/r;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .line 386
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->j()V

    return-void
.end method

.method final synthetic b(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 315
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 316
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->finish()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/phicomm/speaker/f/q;->b(Landroid/view/View;)Z

    .line 278
    iget v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 301
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f025d

    .line 304
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b(I)V

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->finish()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f025a

    .line 297
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b(I)V

    goto :goto_0

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->finish()V

    goto :goto_0

    :cond_2
    const v0, 0x7f0f025e

    .line 290
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b(I)V

    goto :goto_0

    .line 280
    :pswitch_3
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->finish()V

    goto :goto_0

    :cond_3
    const v0, 0x7f0f025b

    .line 283
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->b(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tv_delete()V
    .locals 2
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09027f
        }
    .end annotation

    .line 335
    iget v0, p0, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0257

    .line 340
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->k(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0258

    .line 337
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->k(I)V

    :goto_0
    return-void
.end method
