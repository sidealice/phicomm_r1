.class public Lcom/phicomm/speaker/popup/b;
.super Ljava/lang/Object;
.source "DateChosePopup.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/PopupWindow;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/phicomm/speaker/views/DatePickerView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/phicomm/speaker/c/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7c3

    .line 37
    iput v0, p0, Lcom/phicomm/speaker/popup/b;->g:I

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/phicomm/speaker/popup/b;->h:I

    .line 39
    iput v0, p0, Lcom/phicomm/speaker/popup/b;->i:I

    .line 44
    iput-object p1, p0, Lcom/phicomm/speaker/popup/b;->a:Landroid/app/Activity;

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0b00cb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, p1, v2, v3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/phicomm/speaker/popup/b;->b:Landroid/widget/PopupWindow;

    .line 47
    iget-object v1, p0, Lcom/phicomm/speaker/popup/b;->b:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f09025b

    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/phicomm/speaker/popup/b;->c:Landroid/widget/TextView;

    const v1, 0x7f09027b

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/phicomm/speaker/popup/b;->d:Landroid/widget/TextView;

    const v1, 0x7f09007b

    .line 50
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/views/DatePickerView;

    iput-object v1, p0, Lcom/phicomm/speaker/popup/b;->e:Lcom/phicomm/speaker/views/DatePickerView;

    const v1, 0x7f0902fe

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/phicomm/speaker/popup/b;->f:Landroid/widget/TextView;

    .line 52
    iget-object p1, p0, Lcom/phicomm/speaker/popup/b;->e:Lcom/phicomm/speaker/views/DatePickerView;

    const/16 v1, 0x780

    invoke-virtual {p1, v1, v0, v0}, Lcom/phicomm/speaker/views/DatePickerView;->b(III)V

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 54
    iget-object v1, p0, Lcom/phicomm/speaker/popup/b;->e:Lcom/phicomm/speaker/views/DatePickerView;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/phicomm/speaker/views/DatePickerView;->c(III)V

    .line 56
    iget-object p1, p0, Lcom/phicomm/speaker/popup/b;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/phicomm/speaker/popup/b$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/b$1;-><init>(Lcom/phicomm/speaker/popup/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/phicomm/speaker/popup/b;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/phicomm/speaker/popup/b$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/b$2;-><init>(Lcom/phicomm/speaker/popup/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lcom/phicomm/speaker/popup/b;->b:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/phicomm/speaker/popup/b$3;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/popup/b$3;-><init>(Lcom/phicomm/speaker/popup/b;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/popup/b;)Lcom/phicomm/speaker/views/DatePickerView;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/phicomm/speaker/popup/b;->e:Lcom/phicomm/speaker/views/DatePickerView;

    return-object p0
.end method

.method private a(F)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/phicomm/speaker/popup/b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 171
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 172
    iget-object p1, p0, Lcom/phicomm/speaker/popup/b;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/phicomm/speaker/popup/b;F)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/popup/b;->a(F)V

    return-void
.end method

.method static synthetic b(Lcom/phicomm/speaker/popup/b;)Lcom/phicomm/speaker/c/a;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/phicomm/speaker/popup/b;->j:Lcom/phicomm/speaker/c/a;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/popup/b;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/phicomm/speaker/popup/b;->g:I

    return p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/popup/b;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/phicomm/speaker/popup/b;->h:I

    return p0
.end method

.method static synthetic e(Lcom/phicomm/speaker/popup/b;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/phicomm/speaker/popup/b;->i:I

    return p0
.end method


# virtual methods
.method public a()Lcom/phicomm/speaker/views/DatePickerView;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/popup/b;->e:Lcom/phicomm/speaker/views/DatePickerView;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/popup/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(III)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/phicomm/speaker/popup/b;->g:I

    .line 123
    iput p2, p0, Lcom/phicomm/speaker/popup/b;->h:I

    .line 124
    iput p3, p0, Lcom/phicomm/speaker/popup/b;->i:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/phicomm/speaker/popup/b;->e:Lcom/phicomm/speaker/views/DatePickerView;

    iget v1, p0, Lcom/phicomm/speaker/popup/b;->g:I

    iget v2, p0, Lcom/phicomm/speaker/popup/b;->h:I

    iget v3, p0, Lcom/phicomm/speaker/popup/b;->i:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/phicomm/speaker/views/DatePickerView;->a(III)V

    const v0, 0x3f333333    # 0.7f

    .line 145
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/popup/b;->a(F)V

    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/popup/b;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/popup/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/popup/b;->b:Landroid/widget/PopupWindow;

    const v1, 0x7f1000be

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/popup/b;->b:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/c/a;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/phicomm/speaker/popup/b;->j:Lcom/phicomm/speaker/c/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 98
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 107
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p1

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/phicomm/speaker/popup/b;->a(III)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/phicomm/speaker/popup/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
