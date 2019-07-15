.class public Lcom/phicomm/speaker/popup/f;
.super Ljava/lang/Object;
.source "FeedBackPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/popup/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/PopupWindow;

.field private c:Landroid/view/View;

.field private d:Lcom/phicomm/speaker/bean/FeedBackQuestion;

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/RadioGroup;

.field private k:Z

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/RadioButton;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/phicomm/speaker/popup/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/phicomm/speaker/bean/FeedBackQuestion;Z)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/phicomm/speaker/popup/f;->k:Z

    .line 39
    iput-boolean v0, p0, Lcom/phicomm/speaker/popup/f;->l:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/popup/f;->m:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/phicomm/speaker/popup/f;->d:Lcom/phicomm/speaker/bean/FeedBackQuestion;

    .line 47
    iput-boolean p3, p0, Lcom/phicomm/speaker/popup/f;->e:Z

    .line 48
    invoke-direct {p0}, Lcom/phicomm/speaker/popup/f;->b()V

    .line 49
    invoke-direct {p0}, Lcom/phicomm/speaker/popup/f;->d()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/popup/f;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/phicomm/speaker/popup/f;->m:Ljava/util/List;

    return-object p0
.end method

.method private a(Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 107
    new-instance v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080184

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 112
    iget-object v1, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080185

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 113
    new-instance v1, Landroid/widget/RadioGroup$LayoutParams;

    iget-object v2, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    const/high16 v3, 0x43200000    # 160.0f

    invoke-static {v2, v3}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;->getSeq()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0x39

    const/16 v2, 0xf

    const/4 v3, 0x0

    .line 116
    invoke-virtual {v1, p1, v2, p1, v3}, Landroid/widget/RadioGroup$LayoutParams;->setMargins(IIII)V

    .line 117
    iget-object p1, p0, Lcom/phicomm/speaker/popup/f;->j:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 118
    iget-object p1, p0, Lcom/phicomm/speaker/popup/f;->m:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/popup/f;)Lcom/phicomm/speaker/popup/f$a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/phicomm/speaker/popup/f;->n:Lcom/phicomm/speaker/popup/f$a;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/popup/f;->h:I

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00cf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/popup/f;->c:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->c:Landroid/view/View;

    const v1, 0x7f0902fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/popup/f;->i:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->c:Landroid/view/View;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/phicomm/speaker/popup/f;->j:Landroid/widget/RadioGroup;

    .line 57
    invoke-direct {p0}, Lcom/phicomm/speaker/popup/f;->c()V

    return-void
.end method

.method private b(Landroid/view/View;)[I
    .locals 9

    const/4 v0, 0x2

    .line 153
    new-array v1, v0, [I

    .line 154
    new-array v2, v0, [I

    .line 156
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/phicomm/speaker/f/ad;->b(Landroid/content/Context;)I

    move-result v4

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ad;->c(Landroid/content/Context;)I

    move-result p1

    const/4 v5, 0x1

    .line 165
    aget v6, v2, v5

    sub-int/2addr v4, v6

    sub-int/2addr v4, v3

    iget v6, p0, Lcom/phicomm/speaker/popup/f;->h:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0xa

    iget v6, p0, Lcom/phicomm/speaker/popup/f;->f:I

    const/4 v7, 0x0

    if-ge v4, v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v7

    :goto_0
    const/high16 v6, 0x42480000    # 50.0f

    const/high16 v8, 0x42200000    # 40.0f

    if-eqz v4, :cond_4

    .line 167
    iget-boolean v3, p0, Lcom/phicomm/speaker/popup/f;->l:Z

    if-eqz v3, :cond_2

    .line 168
    iget-boolean v0, p0, Lcom/phicomm/speaker/popup/f;->e:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/phicomm/speaker/popup/f;->g:I

    sub-int/2addr p1, v0

    aput p1, v1, v7

    goto :goto_1

    .line 171
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result p1

    aput p1, v1, v7

    goto :goto_1

    .line 174
    :cond_2
    iget v3, p0, Lcom/phicomm/speaker/popup/f;->g:I

    sub-int/2addr p1, v3

    div-int/2addr p1, v0

    aput p1, v1, v7

    .line 176
    :goto_1
    aget p1, v2, v5

    iget v0, p0, Lcom/phicomm/speaker/popup/f;->f:I

    sub-int/2addr p1, v0

    aput p1, v1, v5

    .line 177
    iget-boolean p1, p0, Lcom/phicomm/speaker/popup/f;->e:Z

    if-eqz p1, :cond_3

    .line 178
    iget-object p1, p0, Lcom/phicomm/speaker/popup/f;->c:Landroid/view/View;

    const v0, 0x7f0800b4

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 180
    :cond_3
    iget-object p1, p0, Lcom/phicomm/speaker/popup/f;->c:Landroid/view/View;

    const v0, 0x7f0800b2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 183
    :cond_4
    iget-boolean v4, p0, Lcom/phicomm/speaker/popup/f;->l:Z

    if-eqz v4, :cond_6

    .line 184
    iget-boolean v0, p0, Lcom/phicomm/speaker/popup/f;->e:Z

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/phicomm/speaker/popup/f;->g:I

    sub-int/2addr p1, v0

    aput p1, v1, v7

    goto :goto_2

    .line 187
    :cond_5
    iget-object p1, p0, Lcom/phicomm/speaker/popup/f;->a:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/phicomm/speaker/f/ad;->a(Landroid/content/Context;F)I

    move-result p1

    aput p1, v1, v7

    goto :goto_2

    .line 190
    :cond_6
    iget v4, p0, Lcom/phicomm/speaker/popup/f;->g:I

    sub-int/2addr p1, v4

    div-int/2addr p1, v0

    aput p1, v1, v7

    .line 192
    :goto_2
    aget p1, v2, v5

    add-int/2addr p1, v3

    add-int/lit8 p1, p1, -0xa

    aput p1, v1, v5

    .line 193
    iget-boolean p1, p0, Lcom/phicomm/speaker/popup/f;->e:Z

    if-eqz p1, :cond_7

    .line 194
    iget-object p1, p0, Lcom/phicomm/speaker/popup/f;->c:Landroid/view/View;

    const v0, 0x7f0800b3

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 196
    :cond_7
    iget-object p1, p0, Lcom/phicomm/speaker/popup/f;->c:Landroid/view/View;

    const v0, 0x7f0800b1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    return-object v1
.end method

.method private c()V
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->d:Lcom/phicomm/speaker/bean/FeedBackQuestion;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/FeedBackQuestion;->getAnswer()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/phicomm/speaker/popup/f;->k:Z

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->d:Lcom/phicomm/speaker/bean/FeedBackQuestion;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/FeedBackQuestion;->getAnswer_list()Ljava/util/List;

    move-result-object v0

    .line 63
    iget-boolean v3, p0, Lcom/phicomm/speaker/popup/f;->k:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_1

    goto :goto_2

    .line 68
    :cond_1
    iput-boolean v2, p0, Lcom/phicomm/speaker/popup/f;->l:Z

    .line 69
    iget-object v1, p0, Lcom/phicomm/speaker/popup/f;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/phicomm/speaker/popup/f;->d:Lcom/phicomm/speaker/bean/FeedBackQuestion;

    invoke-virtual {v3}, Lcom/phicomm/speaker/bean/FeedBackQuestion;->getQuestion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/phicomm/speaker/popup/f;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;

    .line 73
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/popup/f;->a(Lcom/phicomm/speaker/bean/FeedBackQuestion$AnswerListBean;)V

    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->j:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->j:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/phicomm/speaker/popup/f$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/popup/f$1;-><init>(Lcom/phicomm/speaker/popup/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_3

    .line 64
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->i:Landroid/widget/TextView;

    const v2, 0x7f0f00cc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iput-boolean v1, p0, Lcom/phicomm/speaker/popup/f;->l:Z

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->j:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method private d()V
    .locals 4

    .line 98
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/phicomm/speaker/popup/f;->c:Landroid/view/View;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/phicomm/speaker/popup/f;->b:Landroid/widget/PopupWindow;

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->b:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    .line 101
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/popup/f;->f:I

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/popup/f;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/popup/f;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 138
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/popup/f;->b(Landroid/view/View;)[I

    move-result-object v0

    const/4 v2, 0x0

    .line 141
    aget v3, v0, v2

    sub-int/2addr v3, v2

    aput v3, v0, v2

    .line 142
    iget-object v3, p0, Lcom/phicomm/speaker/popup/f;->b:Landroid/widget/PopupWindow;

    aget v2, v0, v2

    aget v0, v0, v1

    const v1, 0x800033

    invoke-virtual {v3, p1, v1, v2, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/popup/f$a;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/phicomm/speaker/popup/f;->n:Lcom/phicomm/speaker/popup/f$a;

    return-void
.end method
