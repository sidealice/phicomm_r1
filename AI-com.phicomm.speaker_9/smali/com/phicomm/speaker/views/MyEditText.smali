.class public Lcom/phicomm/speaker/views/MyEditText;
.super Landroid/widget/LinearLayout;
.source "MyEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/MyEditText$a;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/AppCompatEditText;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/views/MyEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/MyEditText;->k:Z

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/views/MyEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 169
    iput-boolean p3, p0, Lcom/phicomm/speaker/views/MyEditText;->k:Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/views/MyEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/phicomm/speaker/views/MyEditText;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/AppCompatEditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 65
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00eb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090098

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/AppCompatEditText;

    iput-object v1, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    const v1, 0x7f0900f1

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/MyEditText;->b:Landroid/widget/ImageView;

    const v1, 0x7f0900fa

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/MyEditText;->c:Landroid/widget/ImageView;

    const v1, 0x7f090105

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/MyEditText;->d:Landroid/widget/ImageView;

    const v1, 0x7f09029b

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->e:Landroid/widget/TextView;

    .line 73
    sget-object v0, Lcom/phicomm/speaker/R$styleable;->MyEditTextAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 74
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x14

    .line 75
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x4

    .line 76
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/phicomm/speaker/views/MyEditText;->f:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0700af

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/16 v3, 0xa

    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    const/4 p1, 0x5

    .line 78
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0xc

    .line 79
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    .line 80
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/phicomm/speaker/views/MyEditText;->g:Z

    const/4 v4, 0x1

    const/4 v5, 0x3

    .line 81
    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/phicomm/speaker/views/MyEditText;->h:Z

    .line 82
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 83
    invoke-virtual {p2, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 84
    iget-boolean v7, p0, Lcom/phicomm/speaker/views/MyEditText;->g:Z

    if-eqz v7, :cond_0

    add-int/lit8 v2, v2, 0x2

    :cond_0
    const/4 v7, 0x2

    .line 87
    invoke-virtual {p2, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/phicomm/speaker/views/MyEditText;->j:Z

    const/16 v7, 0x8

    .line 88
    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/phicomm/speaker/views/MyEditText;->setIvLeftIcon(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x9

    .line 89
    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/phicomm/speaker/views/MyEditText;->setTvLeftLabel(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    iget-object p2, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-static {v2, p2, v3}, Lcom/phicomm/speaker/f/h;->a(ILandroid/widget/EditText;Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-static {p2, v5, v6}, Lcom/phicomm/speaker/f/h;->a(Landroid/widget/EditText;ZZ)V

    .line 95
    iget-boolean p2, p0, Lcom/phicomm/speaker/views/MyEditText;->j:Z

    if-nez p2, :cond_2

    .line 96
    iget-object p2, p0, Lcom/phicomm/speaker/views/MyEditText;->c:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/phicomm/speaker/views/MyEditText;->f:Z

    if-eqz v2, :cond_1

    move v7, v0

    :cond_1
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :cond_2
    iget-object p2, p0, Lcom/phicomm/speaker/views/MyEditText;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 100
    iget-object p2, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/AppCompatEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/MyEditText;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0600ad

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatEditText;->setHintTextColor(I)V

    .line 102
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/MyEditText;->setInType(I)V

    .line 104
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    new-instance p2, Lcom/phicomm/speaker/views/MyEditText$1;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/views/MyEditText$1;-><init>(Lcom/phicomm/speaker/views/MyEditText;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 120
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    new-instance p2, Lcom/phicomm/speaker/views/MyEditText$2;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/views/MyEditText$2;-><init>(Lcom/phicomm/speaker/views/MyEditText;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 137
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    new-instance p2, Lcom/phicomm/speaker/views/MyEditText$a;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/phicomm/speaker/views/MyEditText$a;-><init>(Lcom/phicomm/speaker/views/MyEditText;Lcom/phicomm/speaker/views/MyEditText$1;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText;->b:Landroid/widget/ImageView;

    new-instance p2, Lcom/phicomm/speaker/views/MyEditText$3;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/views/MyEditText$3;-><init>(Lcom/phicomm/speaker/views/MyEditText;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getInputType()I

    move-result p1

    const/16 p2, 0x80

    if-ne p1, p2, :cond_3

    move v0, v4

    :cond_3
    iput-boolean v0, p0, Lcom/phicomm/speaker/views/MyEditText;->i:Z

    .line 148
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText;->c:Landroid/widget/ImageView;

    new-instance p2, Lcom/phicomm/speaker/views/MyEditText$4;

    invoke-direct {p2, p0}, Lcom/phicomm/speaker/views/MyEditText$4;-><init>(Lcom/phicomm/speaker/views/MyEditText;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/MyEditText;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/MyEditText;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/MyEditText;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/phicomm/speaker/views/MyEditText;->a()V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/MyEditText;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/phicomm/speaker/views/MyEditText;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/phicomm/speaker/views/MyEditText;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/phicomm/speaker/views/MyEditText;->h:Z

    return p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    return-object p0
.end method

.method static synthetic e(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/phicomm/speaker/views/MyEditText;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/phicomm/speaker/views/MyEditText;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/phicomm/speaker/views/MyEditText;->i:Z

    return p0
.end method

.method static synthetic g(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/phicomm/speaker/views/MyEditText;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic h(Lcom/phicomm/speaker/views/MyEditText;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/phicomm/speaker/views/MyEditText;->j:Z

    return p0
.end method

.method static synthetic i(Lcom/phicomm/speaker/views/MyEditText;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/phicomm/speaker/views/MyEditText;->f:Z

    return p0
.end method

.method static synthetic j(Lcom/phicomm/speaker/views/MyEditText;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/phicomm/speaker/views/MyEditText;->g:Z

    return p0
.end method

.method static synthetic k(Lcom/phicomm/speaker/views/MyEditText;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/phicomm/speaker/views/MyEditText;->k:Z

    return p0
.end method

.method private setInType(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 386
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatEditText;->setInputType(I)V

    goto :goto_0

    .line 382
    :pswitch_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatEditText;->setInputType(I)V

    goto :goto_0

    .line 378
    :pswitch_1
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatEditText;->setInputType(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAllContent()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-boolean v1, p0, Lcom/phicomm/speaker/views/MyEditText;->g:Z

    if-eqz v1, :cond_0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEt()Landroid/widget/EditText;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    return-object v0
.end method

.method public getIvDelete()Landroid/widget/ImageView;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIvEye()Landroid/widget/ImageView;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHint(I)V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatEditText;->setHint(I)V

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHintColor(I)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->a:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatEditText;->setHintTextColor(I)V

    return-void
.end method

.method public setIvLeftIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->d:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setTvLeftLabel(Ljava/lang/String;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText;->e:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
