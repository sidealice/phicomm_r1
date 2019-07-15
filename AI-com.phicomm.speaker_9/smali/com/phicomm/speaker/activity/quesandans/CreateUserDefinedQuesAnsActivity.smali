.class public Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;
.super Lcom/phicomm/speaker/base/BaseActivity;
.source "CreateUserDefinedQuesAnsActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/b/f;


# instance fields
.field private a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

.field answerRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c4
    .end annotation
.end field

.field private b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

.field private d:I

.field private e:Lcom/phicomm/speaker/bean/CustumDetailBean;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/phicomm/speaker/presenter/r;

.field mScrollView:Landroid/support/v4/widget/NestedScrollView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901fa
    .end annotation
.end field

.field mTvDelete:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09027f
    .end annotation
.end field

.field questionRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0901c5
    .end annotation
.end field

.field tvAddSimilarAnswer:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024a
    .end annotation
.end field

.field tvAddSimilarQuestion:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09024b
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/phicomm/speaker/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)Lcom/phicomm/speaker/bean/CustumDetailBean;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 444
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "activityType"

    .line 445
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;ILcom/phicomm/speaker/bean/CustumDetailBean;)V
    .locals 2

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "custumDetailBean"

    .line 456
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "activityType"

    .line 457
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 3

    .line 223
    new-instance v0, Lcom/wangjie/shadowviewhelper/ShadowProperty;

    invoke-direct {v0}, Lcom/wangjie/shadowviewhelper/ShadowProperty;-><init>()V

    const/high16 v1, 0x77000000

    .line 224
    invoke-virtual {v0, v1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowColor(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    .line 225
    invoke-static {v1}, Lcom/phicomm/speaker/f/a/a;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowDy(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 226
    invoke-static {v1}, Lcom/phicomm/speaker/f/a/a;->a(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowRadius(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p2}, Lcom/wangjie/shadowviewhelper/ShadowProperty;->setShadowSide(I)Lcom/wangjie/shadowviewhelper/ShadowProperty;

    move-result-object p2

    .line 228
    new-instance v0, Lcom/wangjie/shadowviewhelper/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2, v1, v1}, Lcom/wangjie/shadowviewhelper/a;-><init>(Lcom/wangjie/shadowviewhelper/ShadowProperty;IFF)V

    .line 229
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 230
    invoke-static {p1, p2, v0}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;Lcom/phicomm/speaker/popup/c;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a(Lcom/phicomm/speaker/popup/c;Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private a(Lcom/phicomm/speaker/popup/c;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 6

    .line 237
    invoke-virtual {p1}, Lcom/phicomm/speaker/popup/c;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 239
    invoke-static {}, Lcom/blankj/utilcode/util/c;->a()I

    move-result v0

    .line 240
    invoke-static {}, Lcom/blankj/utilcode/util/c;->b()I

    move-result v1

    .line 242
    invoke-virtual {p1}, Lcom/phicomm/speaker/popup/c;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 243
    invoke-virtual {p1}, Lcom/phicomm/speaker/popup/c;->a()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 245
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    .line 246
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result p3

    float-to-int p3, p3

    sub-int v5, v0, v4

    if-lt v5, v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int v4, v0, v2

    :goto_0
    sub-int v0, v1, p3

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    sub-int p3, v1, v3

    .line 264
    :goto_1
    invoke-virtual {p1, p2, v4, p3}, Lcom/phicomm/speaker/popup/c;->a(Landroid/view/View;II)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 294
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_7

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/bean/CustumBean;

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/CustumBean;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/CustumBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne p2, v2, :cond_6

    const/4 p2, 0x1

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 305
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move p2, v0

    goto :goto_1

    .line 309
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 310
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_5
    return p2

    :cond_6
    return v0

    :cond_7
    return v0
.end method

.method static synthetic b(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)Lcom/phicomm/speaker/adapter/QuestionsAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    return-object p0
.end method

.method private b(I)V
    .locals 8

    .line 323
    new-instance v7, Lcom/phicomm/speaker/views/e;

    new-instance v6, Lcom/phicomm/speaker/activity/quesandans/c;

    invoke-direct {v6, p0}, Lcom/phicomm/speaker/activity/quesandans/c;-><init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)V

    const v3, 0x7f0f004d

    const/4 v4, 0x0

    const v5, 0x7f0f00b4

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;ILcom/phicomm/speaker/c/c;)V

    .line 328
    invoke-virtual {v7}, Lcom/phicomm/speaker/views/e;->show()V

    return-void
.end method

.method static synthetic c(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)Lcom/phicomm/speaker/adapter/AnswerAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 117
    new-instance v0, Lcom/phicomm/speaker/presenter/r;

    new-instance v1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$1;-><init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/presenter/r;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/q;)V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->h:Lcom/phicomm/speaker/presenter/r;

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->f()V

    return-void
.end method

.method private e()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->questionRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->questionRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$2;-><init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$k;)V

    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->answerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$3;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->answerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, p0, v2}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity$3;-><init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$k;)V

    return-void
.end method

.method private f()V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    .line 383
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->tvAddSimilarQuestion:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->tvAddSimilarQuestion:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 389
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->tvAddSimilarAnswer:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->tvAddSimilarAnswer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const v0, 0x7f0f020e

    .line 84
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->f(I)V

    const v0, 0x7f06006f

    .line 85
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->h(I)V

    const v0, 0x7f0f004d

    .line 86
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->c(I)V

    const v0, 0x7f06003e

    .line 87
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->d(I)V

    .line 88
    new-instance v0, Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->questionRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->questionRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 91
    new-instance v0, Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-direct {v0}, Lcom/phicomm/speaker/adapter/AnswerAdapter;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->answerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/recyclerview/FullyLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$g;)V

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->answerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 94
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e()V

    .line 95
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->d()V

    .line 96
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activityType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->d:I

    .line 97
    iget v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->d:I

    if-nez v0, :cond_0

    const v0, 0x7f0f008c

    .line 98
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f00ba

    .line 100
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e(I)V

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->mTvDelete:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a(Landroid/view/View;I)V

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->mTvDelete:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "custumDetailBean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/bean/CustumDetailBean;

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getQuestionContents(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->f:Ljava/util/List;

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getAnswerContents(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->g:Ljava/util/List;

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getQuestion_list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->setNewData(Ljava/util/List;)V

    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getAnswer_list()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->setNewData(Ljava/util/List;)V

    .line 109
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->f()V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->j(I)V

    return-void
.end method

.method final synthetic a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 337
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 338
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->h:Lcom/phicomm/speaker/presenter/r;

    iget-object p2, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {p2}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getCus_sel_id()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/r;->b(J)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    const p1, 0x7f0b002d

    .line 79
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->setContentView(I)V

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 10

    .line 352
    invoke-super {p0, p1}, Lcom/phicomm/speaker/base/BaseActivity;->a(Landroid/widget/TextView;)V

    .line 353
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0f01c5

    .line 354
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f0f01c4

    .line 356
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    goto :goto_0

    .line 358
    :cond_1
    iget p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 363
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->h:Lcom/phicomm/speaker/presenter/r;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->e:Lcom/phicomm/speaker/bean/CustumDetailBean;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/CustumDetailBean;->getCus_sel_id()J

    move-result-wide v0

    iget-object v2, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    invoke-virtual {v2}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->getData()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-virtual {v3}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/r;->a(JLjava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 360
    :pswitch_1
    iget-object v4, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->h:Lcom/phicomm/speaker/presenter/r;

    const-string v5, "my_custum"

    const-wide/16 v6, 0x0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->getData()Ljava/util/List;

    move-result-object v8

    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->getData()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/phicomm/speaker/presenter/r;->a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 0

    .line 468
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->j()V

    return-void
.end method

.method final synthetic b(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 325
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 326
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->finish()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 270
    iget v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 279
    :pswitch_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    invoke-virtual {v1}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-virtual {v1}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0f025f

    .line 282
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b(I)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->finish()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f025c

    .line 275
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 397
    invoke-super {p0, p1, p2, p3}, Lcom/phicomm/speaker/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_2

    const-string p2, "content"

    .line 399
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "editPosition"

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    const-wide/16 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 423
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->remove(I)V

    .line 424
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    new-instance v2, Lcom/phicomm/speaker/bean/CustumBean;

    invoke-direct {v2, v0, v1, p2}, Lcom/phicomm/speaker/bean/CustumBean;-><init>(JLjava/lang/String;)V

    invoke-virtual {p1, p3, v2}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->addData(ILjava/lang/Object;)V

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->f()V

    goto :goto_0

    .line 417
    :pswitch_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 418
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->b:Lcom/phicomm/speaker/adapter/AnswerAdapter;

    new-instance p3, Lcom/phicomm/speaker/bean/CustumBean;

    invoke-direct {p3, v0, v1, p2}, Lcom/phicomm/speaker/bean/CustumBean;-><init>(JLjava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/adapter/AnswerAdapter;->addData(Ljava/lang/Object;)V

    .line 419
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->f()V

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->remove(I)V

    .line 410
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 411
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    new-instance v2, Lcom/phicomm/speaker/bean/CustumBean;

    invoke-direct {v2, v0, v1, p2}, Lcom/phicomm/speaker/bean/CustumBean;-><init>(JLjava/lang/String;)V

    invoke-virtual {p1, p3, v2}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->addData(ILjava/lang/Object;)V

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->f()V

    goto :goto_0

    .line 403
    :pswitch_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 404
    iget-object p1, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->a:Lcom/phicomm/speaker/adapter/QuestionsAdapter;

    new-instance p3, Lcom/phicomm/speaker/bean/CustumBean;

    invoke-direct {p3, v0, v1, p2}, Lcom/phicomm/speaker/bean/CustumBean;-><init>(JLjava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/adapter/QuestionsAdapter;->addData(Ljava/lang/Object;)V

    .line 405
    invoke-direct {p0}, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->f()V

    :cond_2
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

.method protected onDestroy()V
    .locals 0

    .line 174
    invoke-super {p0}, Lcom/phicomm/speaker/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public tv_add_similar_answer()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09024a
        }
    .end annotation

    const/4 v0, 0x3

    .line 378
    invoke-static {p0, v0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a(Landroid/app/Activity;II)V

    return-void
.end method

.method public tv_add_similar_question()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09024b
        }
    .end annotation

    const/4 v0, 0x1

    .line 373
    invoke-static {p0, v0, v0}, Lcom/phicomm/speaker/activity/quesandans/AddSimilarQuestionActivity;->a(Landroid/app/Activity;II)V

    return-void
.end method

.method public tv_delete()V
    .locals 8
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f09027f
        }
    .end annotation

    .line 333
    iget v0, p0, Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 335
    :pswitch_0
    new-instance v0, Lcom/phicomm/speaker/views/e;

    const v3, 0x7f0f0259

    const v4, 0x7f0f004d

    const/4 v5, 0x0

    const v6, 0x7f0f00b4

    new-instance v7, Lcom/phicomm/speaker/activity/quesandans/d;

    invoke-direct {v7, p0}, Lcom/phicomm/speaker/activity/quesandans/d;-><init>(Lcom/phicomm/speaker/activity/quesandans/CreateUserDefinedQuesAnsActivity;)V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/phicomm/speaker/views/e;-><init>(Landroid/content/Context;IILcom/phicomm/speaker/c/c;ILcom/phicomm/speaker/c/c;)V

    .line 340
    invoke-virtual {v0}, Lcom/phicomm/speaker/views/e;->show()V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
