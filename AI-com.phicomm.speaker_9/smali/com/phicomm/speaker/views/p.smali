.class public Lcom/phicomm/speaker/views/p;
.super Landroid/app/Dialog;
.source "VerifyDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/views/p$a;
    }
.end annotation


# instance fields
.field private a:Lcom/phicomm/speaker/views/p$a;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:I

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Ljava/lang/String;

.field private m:Lcom/phicomm/speaker/presenter/c;

.field private n:Lcom/phicomm/speaker/bean/Captcha;

.field private o:Landroid/content/Context;

.field private p:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/bean/Captcha;Lcom/phicomm/speaker/views/p$a;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 76
    iput-object p1, p0, Lcom/phicomm/speaker/views/p;->o:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/phicomm/speaker/views/p;->l:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/phicomm/speaker/views/p;->a:Lcom/phicomm/speaker/views/p$a;

    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/p;->setCancelable(Z)V

    const/4 p2, 0x1

    .line 80
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/views/p;->requestWindowFeature(I)Z

    .line 81
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/p;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance p4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->c()V

    .line 83
    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->e()V

    if-nez p3, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->g()V

    goto :goto_0

    .line 87
    :cond_0
    iput-object p3, p0, Lcom/phicomm/speaker/views/p;->n:Lcom/phicomm/speaker/bean/Captcha;

    .line 88
    invoke-direct {p0, p3}, Lcom/phicomm/speaker/views/p;->a(Lcom/phicomm/speaker/bean/Captcha;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/views/p$a;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/views/p;->o:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/phicomm/speaker/views/p;->l:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/phicomm/speaker/views/p;->a:Lcom/phicomm/speaker/views/p$a;

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/p;->setCancelable(Z)V

    const/4 p2, 0x1

    .line 67
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/views/p;->requestWindowFeature(I)Z

    .line 68
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/p;->getWindow()Landroid/view/Window;

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->c()V

    .line 70
    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->e()V

    .line 71
    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->g()V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/p;Lcom/phicomm/speaker/bean/Captcha;)Lcom/phicomm/speaker/bean/Captcha;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/phicomm/speaker/views/p;->n:Lcom/phicomm/speaker/bean/Captcha;

    return-object p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/p;)Lcom/phicomm/speaker/views/p$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/phicomm/speaker/views/p;->a:Lcom/phicomm/speaker/views/p$a;

    return-object p0
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 3

    .line 248
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 249
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 250
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 252
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 253
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 254
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 255
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 256
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->o:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 257
    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private a(Lcom/phicomm/speaker/bean/Captcha;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 186
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/Captcha;->getCaptcha()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/Captcha;->getCaptchaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/Captcha;->getCaptcha()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/d;->a(Ljava/lang/String;)[B

    move-result-object p1

    .line 191
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/phicomm/speaker/PhApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 192
    iget-object p1, p0, Lcom/phicomm/speaker/views/p;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 187
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/p;->o:Landroid/content/Context;

    const v0, 0x7f0f0052

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/p;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/p;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->p:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 321
    iget-object p1, p0, Lcom/phicomm/speaker/views/p;->k:Landroid/widget/ImageView;

    const v0, 0x7f0800fb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget-object p1, p0, Lcom/phicomm/speaker/views/p;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->p:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/views/p;->k:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 325
    iget-object p1, p0, Lcom/phicomm/speaker/views/p;->k:Landroid/widget/ImageView;

    const v0, 0x7f080164

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/p;Lcom/phicomm/speaker/bean/Captcha;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/p;->a(Lcom/phicomm/speaker/bean/Captcha;)V

    return-void
.end method

.method private c()V
    .locals 2

    const v0, 0x7f0b007e

    .line 93
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->setContentView(I)V

    const v0, 0x7f090117

    .line 94
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/p;->k:Landroid/widget/ImageView;

    const v0, 0x7f0900eb

    .line 95
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/p;->h:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/phicomm/speaker/views/p$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/p$1;-><init>(Lcom/phicomm/speaker/views/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090052

    .line 102
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/phicomm/speaker/views/p;->b:Landroid/widget/EditText;

    const v0, 0x7f090053

    .line 103
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/phicomm/speaker/views/p;->c:Landroid/widget/EditText;

    const v0, 0x7f090054

    .line 104
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/phicomm/speaker/views/p;->d:Landroid/widget/EditText;

    const v0, 0x7f090055

    .line 105
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/phicomm/speaker/views/p;->e:Landroid/widget/EditText;

    const v0, 0x7f090288

    .line 106
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/p;->i:Landroid/widget/TextView;

    const v0, 0x7f0900e4

    .line 107
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/p;->j:Landroid/widget/ImageView;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/phicomm/speaker/views/p;->b:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/phicomm/speaker/views/p;->c:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/phicomm/speaker/views/p;->d:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/phicomm/speaker/views/p;->e:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 128
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0900ae

    .line 130
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/views/p$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/p$2;-><init>(Lcom/phicomm/speaker/views/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/views/p;->a(Landroid/widget/EditText;)V

    .line 139
    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->d()V

    return-void
.end method

.method private d()V
    .locals 8

    .line 143
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x45610000    # 3600.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lcom/phicomm/speaker/views/p;->p:Landroid/view/animation/Animation;

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->p:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->p:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 146
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->p:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 147
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/phicomm/speaker/views/p;->p:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private e()V
    .locals 3

    .line 153
    new-instance v0, Lcom/phicomm/speaker/presenter/c;

    new-instance v1, Lcom/phicomm/speaker/views/p$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/p$3;-><init>(Lcom/phicomm/speaker/views/p;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/phicomm/speaker/presenter/c;-><init>(Lcom/phicomm/speaker/presenter/b/f;Lcom/phicomm/speaker/presenter/b/c;)V

    iput-object v0, p0, Lcom/phicomm/speaker/views/p;->m:Lcom/phicomm/speaker/presenter/c;

    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    iget-object v1, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 263
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    .line 298
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/views/p;->a(Z)V

    .line 299
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->m:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/presenter/c;->f()V

    return-void
.end method

.method private h()V
    .locals 4

    .line 306
    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->n:Lcom/phicomm/speaker/bean/Captcha;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/Captcha;->getCaptchaid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 311
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/views/p;->a(Z)V

    .line 312
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->m:Lcom/phicomm/speaker/presenter/c;

    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/views/p;->n:Lcom/phicomm/speaker/bean/Captcha;

    invoke-virtual {v2}, Lcom/phicomm/speaker/bean/Captcha;->getCaptchaid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/views/p;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/presenter/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 307
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->o:Landroid/content/Context;

    const v1, 0x7f0f0052

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 284
    iput v0, p0, Lcom/phicomm/speaker/views/p;->f:I

    .line 285
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/views/p;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/phicomm/speaker/views/p;->i:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string v0, ""

    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 208
    :cond_0
    iget p1, p0, Lcom/phicomm/speaker/views/p;->f:I

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->h()V

    return-void

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    iget v0, p0, Lcom/phicomm/speaker/views/p;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/views/p;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/p;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/p;->a(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/p;->a()V

    .line 291
    invoke-direct {p0}, Lcom/phicomm/speaker/views/p;->g()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/views/p;->a(Landroid/widget/EditText;)V

    .line 234
    iput v2, p0, Lcom/phicomm/speaker/views/p;->f:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    iget v0, p0, Lcom/phicomm/speaker/views/p;->f:I

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/p;->a(Landroid/widget/EditText;)V

    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 331
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 332
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/phicomm/speaker/views/p;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/16 v0, 0x43

    if-ne p2, v0, :cond_1

    .line 218
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 219
    iget p2, p0, Lcom/phicomm/speaker/views/p;->f:I

    if-nez p2, :cond_0

    return p1

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    iget p2, p0, Lcom/phicomm/speaker/views/p;->f:I

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/phicomm/speaker/views/p;->f:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p1, p0, Lcom/phicomm/speaker/views/p;->g:Ljava/util/List;

    iget p2, p0, Lcom/phicomm/speaker/views/p;->f:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/p;->a(Landroid/widget/EditText;)V

    return p3

    :cond_1
    return p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
