.class public Lcom/phicomm/speaker/views/widget/CustomEditText;
.super Landroid/support/v7/widget/AppCompatEditText;
.source "CustomEditText.java"


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/StringBuilder;

.field private e:Ljava/lang/StringBuilder;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->a:Ljava/lang/StringBuilder;

    const-string p1, ""

    .line 30
    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->b:Ljava/lang/String;

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->d:Ljava/lang/StringBuilder;

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->e:Ljava/lang/StringBuilder;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->f:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->g:Ljava/util/List;

    .line 54
    invoke-direct {p0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a()V

    return-void
.end method

.method private a(IIILjava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_7

    .line 72
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-gt p2, p3, :cond_6

    add-int v1, p2, p3

    .line 76
    div-int/lit8 v1, v1, 0x2

    .line 77
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    int-to-long v4, p1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    if-le v1, p2, :cond_2

    add-int/lit8 p3, v1, -0x1

    .line 81
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_1

    return v1

    .line 84
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(IIILjava/util/List;)I

    move-result p1

    return p1

    :cond_2
    return v0

    :cond_3
    if-ge v1, p3, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 91
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt p1, p2, :cond_4

    return v1

    .line 94
    :cond_4
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(IIILjava/util/List;)I

    move-result p1

    return p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/widget/CustomEditText;IIILjava/util/List;)I
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(IIILjava/util/List;)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/widget/CustomEditText;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/widget/CustomEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 12

    .line 221
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 222
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 228
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 230
    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p1, v4

    .line 231
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    cmpg-float v6, v6, v0

    if-gtz v6, :cond_1

    .line 233
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    move v7, v2

    move v8, v6

    .line 237
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v7, v9, :cond_3

    .line 238
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 239
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    add-float/2addr v8, v10

    cmpg-float v10, v8, v0

    if-gtz v10, :cond_2

    .line 241
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 243
    :cond_2
    iget-object v8, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->g:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    iget-object v10, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->f:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v8, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->f:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "\n"

    .line 245
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, -0x1

    move v8, v6

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->e:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x1

    .line 121
    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/phicomm/speaker/views/widget/CustomEditText$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/views/widget/CustomEditText$1;-><init>(Lcom/phicomm/speaker/views/widget/CustomEditText;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 150
    new-instance v0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/widget/CustomEditText$2;-><init>(Lcom/phicomm/speaker/views/widget/CustomEditText;)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/phicomm/speaker/views/widget/CustomEditText;I)Z
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(I)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0xa

    .line 197
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-le v3, v2, :cond_0

    .line 199
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "\n"

    .line 201
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 205
    new-array v0, v3, [Ljava/lang/String;

    aput-object p1, v0, v1

    return-object v0

    .line 207
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v2, v1, :cond_3

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 211
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/widget/CustomEditText;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->c:I

    return p1
.end method

.method static synthetic b(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->a:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic c(Lcom/phicomm/speaker/views/widget/CustomEditText;I)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->setSelection(I)V

    return-void
.end method

.method static synthetic d(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->d:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic d(Lcom/phicomm/speaker/views/widget/CustomEditText;I)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatEditText;->setSelection(I)V

    return-void
.end method

.method static synthetic e(Lcom/phicomm/speaker/views/widget/CustomEditText;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->c:I

    return p0
.end method

.method static synthetic f(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 262
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iput v1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->c:I

    .line 264
    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->b:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->getWidth()I

    move-result p1

    if-lez p1, :cond_0

    .line 266
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->b:Ljava/lang/String;

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCursorSelection(I)V
    .locals 3

    .line 286
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->getWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 287
    new-instance v0, Lcom/phicomm/speaker/views/widget/CustomEditText$3;

    invoke-direct {v0, p0, p1}, Lcom/phicomm/speaker/views/widget/CustomEditText$3;-><init>(Lcom/phicomm/speaker/views/widget/CustomEditText;I)V

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/phicomm/speaker/views/widget/CustomEditText;->g:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(IIILjava/util/List;)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->d(Lcom/phicomm/speaker/views/widget/CustomEditText;I)V

    :goto_0
    return-void
.end method
