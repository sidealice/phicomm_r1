.class public Lcom/phicomm/speaker/views/DatePickerView;
.super Landroid/widget/FrameLayout;
.source "DatePickerView.java"


# instance fields
.field final a:[I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/phicomm/speaker/views/wheelview/WheelView;

.field private k:Lcom/phicomm/speaker/views/wheelview/WheelView;

.field private l:Lcom/phicomm/speaker/views/wheelview/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xc

    .line 24
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/phicomm/speaker/views/DatePickerView;->a:[I

    .line 41
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/DatePickerView;->a(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method private a(I)I
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/DatePickerView;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/DatePickerView;I)I
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/DatePickerView;->a(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .line 46
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/DatePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00e2

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090327

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/wheelview/WheelView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const v1, 0x7f09018b

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/wheelview/WheelView;

    iput-object v1, p0, Lcom/phicomm/speaker/views/DatePickerView;->k:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const v1, 0x7f09007c

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/views/wheelview/WheelView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setGravity(I)V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setGravity(I)V

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, -0xc8

    iput v2, p0, Lcom/phicomm/speaker/views/DatePickerView;->b:I

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit16 v2, v2, 0xc8

    iput v2, p0, Lcom/phicomm/speaker/views/DatePickerView;->c:I

    .line 56
    iget v2, p0, Lcom/phicomm/speaker/views/DatePickerView;->b:I

    invoke-virtual {p0, v2, v1, v1}, Lcom/phicomm/speaker/views/DatePickerView;->b(III)V

    .line 57
    iget v2, p0, Lcom/phicomm/speaker/views/DatePickerView;->c:I

    const/16 v3, 0x1f

    const/16 v4, 0xc

    invoke-virtual {p0, v2, v4, v3}, Lcom/phicomm/speaker/views/DatePickerView;->c(III)V

    .line 61
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    const/16 v5, 0x16

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    .line 62
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView;->k:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v2, v5}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    .line 63
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v2, v5}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setTextSize(F)V

    .line 65
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v5, Lcom/phicomm/speaker/views/wheelview/a/a;

    iget v6, p0, Lcom/phicomm/speaker/views/DatePickerView;->b:I

    iget v7, p0, Lcom/phicomm/speaker/views/DatePickerView;->c:I

    const v8, 0x7f0f02a5

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/phicomm/speaker/views/wheelview/a/a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V

    .line 66
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView;->k:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v5, Lcom/phicomm/speaker/views/wheelview/a/a;

    const v6, 0x7f0f0167

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v4, v6}, Lcom/phicomm/speaker/views/wheelview/a/a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V

    .line 67
    iget-object v2, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v4, Lcom/phicomm/speaker/views/wheelview/a/a;

    const v5, 0x7f0f00a3

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v1, v3, p1}, Lcom/phicomm/speaker/views/wheelview/a/a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setAdapter(Lcom/phicomm/speaker/views/wheelview/a/c;)V

    const/16 p1, 0x7c7

    const/4 v1, 0x2

    const/16 v2, 0xf

    .line 68
    invoke-virtual {p0, p1, v1, v2}, Lcom/phicomm/speaker/views/DatePickerView;->a(III)V

    .line 70
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v1, Lcom/phicomm/speaker/views/DatePickerView$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/DatePickerView$1;-><init>(Lcom/phicomm/speaker/views/DatePickerView;)V

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setOnItemSelectedListener(Lcom/phicomm/speaker/views/wheelview/b/a;)V

    .line 115
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView;->k:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v1, Lcom/phicomm/speaker/views/DatePickerView$2;

    invoke-direct {v1, p0, v0}, Lcom/phicomm/speaker/views/DatePickerView$2;-><init>(Lcom/phicomm/speaker/views/DatePickerView;Ljava/util/Calendar;)V

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setOnItemSelectedListener(Lcom/phicomm/speaker/views/wheelview/b/a;)V

    .line 145
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    new-instance v1, Lcom/phicomm/speaker/views/DatePickerView$3;

    invoke-direct {v1, p0, v0}, Lcom/phicomm/speaker/views/DatePickerView$3;-><init>(Lcom/phicomm/speaker/views/DatePickerView;Ljava/util/Calendar;)V

    invoke-virtual {p1, v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setOnItemSelectedListener(Lcom/phicomm/speaker/views/wheelview/b/a;)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/phicomm/speaker/views/DatePickerView;->k:Lcom/phicomm/speaker/views/wheelview/WheelView;

    return-object p0
.end method

.method private b(I)Z
    .locals 1

    .line 189
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c(Lcom/phicomm/speaker/views/DatePickerView;)Lcom/phicomm/speaker/views/wheelview/WheelView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/views/DatePickerView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/phicomm/speaker/views/DatePickerView;->d:I

    return p0
.end method

.method static synthetic e(Lcom/phicomm/speaker/views/DatePickerView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/phicomm/speaker/views/DatePickerView;->e:I

    return p0
.end method

.method static synthetic f(Lcom/phicomm/speaker/views/DatePickerView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/phicomm/speaker/views/DatePickerView;->f:I

    return p0
.end method

.method static synthetic g(Lcom/phicomm/speaker/views/DatePickerView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/phicomm/speaker/views/DatePickerView;->g:I

    return p0
.end method

.method static synthetic h(Lcom/phicomm/speaker/views/DatePickerView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/phicomm/speaker/views/DatePickerView;->h:I

    return p0
.end method

.method static synthetic i(Lcom/phicomm/speaker/views/DatePickerView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/phicomm/speaker/views/DatePickerView;->i:I

    return p0
.end method

.method static synthetic j(Lcom/phicomm/speaker/views/DatePickerView;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/phicomm/speaker/views/DatePickerView;->b:I

    return p0
.end method


# virtual methods
.method public a(III)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    iget v1, p0, Lcom/phicomm/speaker/views/DatePickerView;->b:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 200
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView;->k:Lcom/phicomm/speaker/views/wheelview/WheelView;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 202
    iget-object p1, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCurrentItem(I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->k:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(III)V
    .locals 0

    .line 271
    iput p1, p0, Lcom/phicomm/speaker/views/DatePickerView;->d:I

    .line 272
    iput p2, p0, Lcom/phicomm/speaker/views/DatePickerView;->e:I

    .line 273
    iput p3, p0, Lcom/phicomm/speaker/views/DatePickerView;->f:I

    return-void
.end method

.method public c(III)V
    .locals 0

    .line 284
    iput p1, p0, Lcom/phicomm/speaker/views/DatePickerView;->g:I

    .line 285
    iput p2, p0, Lcom/phicomm/speaker/views/DatePickerView;->h:I

    .line 286
    iput p3, p0, Lcom/phicomm/speaker/views/DatePickerView;->i:I

    return-void
.end method

.method public getDate()Ljava/lang/String;
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    iget-object v1, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/phicomm/speaker/views/DatePickerView;->k:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->k:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/wheelview/WheelView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public setCyclic(Z)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->j:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCyclic(Z)V

    .line 212
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->k:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCyclic(Z)V

    .line 213
    iget-object v0, p0, Lcom/phicomm/speaker/views/DatePickerView;->l:Lcom/phicomm/speaker/views/wheelview/WheelView;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/views/wheelview/WheelView;->setCyclic(Z)V

    return-void
.end method
