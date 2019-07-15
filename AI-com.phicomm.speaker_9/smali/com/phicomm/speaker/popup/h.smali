.class public Lcom/phicomm/speaker/popup/h;
.super Ljava/lang/Object;
.source "JobChosePopup.java"


# static fields
.field public static a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/app/Activity;

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/phicomm/speaker/views/XcFlowLayout;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private i:[Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Lcom/phicomm/speaker/c/b;

.field private m:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/phicomm/speaker/popup/h;->j:Ljava/lang/String;

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/phicomm/speaker/popup/h;->k:I

    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/popup/h;->c:Landroid/app/Activity;

    .line 54
    iget-object v1, p0, Lcom/phicomm/speaker/popup/h;->c:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/popup/h;->b:Landroid/view/LayoutInflater;

    .line 55
    iget-object v1, p0, Lcom/phicomm/speaker/popup/h;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030002

    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/phicomm/speaker/popup/h;->a:[Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/phicomm/speaker/popup/h;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0b00cc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 58
    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/phicomm/speaker/popup/h;->d:Landroid/widget/PopupWindow;

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/popup/h;->d:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f09025b

    .line 60
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/popup/h;->e:Landroid/widget/TextView;

    const v0, 0x7f09027b

    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/popup/h;->f:Landroid/widget/TextView;

    const v0, 0x7f090326

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/XcFlowLayout;

    iput-object v0, p0, Lcom/phicomm/speaker/popup/h;->g:Lcom/phicomm/speaker/views/XcFlowLayout;

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/popup/h;->m:I

    .line 64
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h;->e:Landroid/widget/TextView;

    new-instance v0, Lcom/phicomm/speaker/popup/h$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/h$1;-><init>(Lcom/phicomm/speaker/popup/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/phicomm/speaker/popup/h$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/h$2;-><init>(Lcom/phicomm/speaker/popup/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h;->d:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/phicomm/speaker/popup/h$3;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/h$3;-><init>(Lcom/phicomm/speaker/popup/h;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/popup/h;)Lcom/phicomm/speaker/c/b;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/phicomm/speaker/popup/h;->l:Lcom/phicomm/speaker/c/b;

    return-object p0
.end method

.method private a(F)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/phicomm/speaker/popup/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 209
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 210
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h;->f:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/popup/h;->f:Landroid/widget/TextView;

    iget v2, p0, Lcom/phicomm/speaker/popup/h;->m:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v1, p0, Lcom/phicomm/speaker/popup/h;->f:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    move v1, v0

    .line 133
    :goto_0
    iget-object v3, p0, Lcom/phicomm/speaker/popup/h;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/phicomm/speaker/popup/h;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 138
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/popup/h;->j:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/popup/h;F)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/popup/h;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/popup/h;Landroid/widget/TextView;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/popup/h;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 95
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/popup/h;->h:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    .line 99
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/phicomm/speaker/popup/h;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f0b00e6

    iget-object v4, p0, Lcom/phicomm/speaker/popup/h;->g:Lcom/phicomm/speaker/views/XcFlowLayout;

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    new-instance v3, Lcom/phicomm/speaker/popup/h$4;

    invoke-direct {v3, p0, v2}, Lcom/phicomm/speaker/popup/h$4;-><init>(Lcom/phicomm/speaker/popup/h;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v3, p0, Lcom/phicomm/speaker/popup/h;->h:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v3, p0, Lcom/phicomm/speaker/popup/h;->g:Lcom/phicomm/speaker/views/XcFlowLayout;

    invoke-virtual {v3, v2}, Lcom/phicomm/speaker/views/XcFlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 115
    iget v0, p0, Lcom/phicomm/speaker/popup/h;->k:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/phicomm/speaker/popup/h;->k:I

    iget-object v1, p0, Lcom/phicomm/speaker/popup/h;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h;->h:Ljava/util/List;

    iget v0, p0, Lcom/phicomm/speaker/popup/h;->k:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 118
    :cond_2
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/popup/h;->a(Landroid/widget/TextView;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/popup/h;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/phicomm/speaker/popup/h;->j:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/popup/h;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    const v0, 0x3f333333    # 0.7f

    .line 183
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/popup/h;->a(F)V

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/popup/h;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 187
    iget-object v0, p0, Lcom/phicomm/speaker/popup/h;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/popup/h;->d:Landroid/widget/PopupWindow;

    const v1, 0x7f1000be

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/popup/h;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/c/b;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/phicomm/speaker/popup/h;->l:Lcom/phicomm/speaker/c/b;

    return-void
.end method

.method public a([Ljava/lang/String;I)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/phicomm/speaker/popup/h;->i:[Ljava/lang/String;

    if-ltz p2, :cond_0

    .line 159
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h;->i:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_0

    .line 160
    iput p2, p0, Lcom/phicomm/speaker/popup/h;->k:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 162
    iput p1, p0, Lcom/phicomm/speaker/popup/h;->k:I

    .line 164
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/popup/h;->i:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/popup/h;->a([Ljava/lang/String;)V

    return-void
.end method
