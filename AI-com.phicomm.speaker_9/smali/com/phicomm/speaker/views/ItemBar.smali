.class public Lcom/phicomm/speaker/views/ItemBar;
.super Landroid/widget/RelativeLayout;
.source "ItemBar.java"


# instance fields
.field a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Landroid/text/SpannableString;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0}, Lcom/phicomm/speaker/views/ItemBar;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/phicomm/speaker/views/ItemBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00e5

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->a:Landroid/view/View;

    const v0, 0x7f0900d1

    .line 85
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/ItemBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->o:Landroid/widget/ImageView;

    const v0, 0x7f0900d3

    .line 86
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/ItemBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->p:Landroid/widget/ImageView;

    return-void
.end method

.method private getView()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f090246

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/ItemBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->k:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->k:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/phicomm/speaker/views/ItemBar;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->c:Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/views/ItemBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->k:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/ItemBar;->c:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f090248

    .line 115
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/ItemBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->l:Landroid/widget/TextView;

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/ItemBar;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f090245

    .line 120
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/ItemBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->m:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/ItemBar;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f090247

    .line 125
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/views/ItemBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->n:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/phicomm/speaker/views/ItemBar;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getmLeft_img()Landroid/widget/ImageView;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getmLeft_message()Landroid/widget/TextView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmLeft_title()Landroid/widget/TextView;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmRight_img()Landroid/widget/ImageView;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getmRight_message()Landroid/widget/TextView;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method public getmRight_title()Landroid/widget/TextView;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/views/ItemBar;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public setLeftImg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/phicomm/speaker/views/ItemBar;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLeftImgBackRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/phicomm/speaker/views/ItemBar;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLeftMessage(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/phicomm/speaker/views/ItemBar;->e:Ljava/lang/String;

    return-void
.end method

.method public setLeftTitle(Landroid/text/SpannableString;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/phicomm/speaker/views/ItemBar;->c:Landroid/text/SpannableString;

    return-void
.end method

.method public setLeftTitle(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/phicomm/speaker/views/ItemBar;->b:Ljava/lang/String;

    return-void
.end method

.method public setRightImg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/phicomm/speaker/views/ItemBar;->h:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setRightImgBackRound(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/phicomm/speaker/views/ItemBar;->j:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setRightMessage(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/phicomm/speaker/views/ItemBar;->f:Ljava/lang/String;

    return-void
.end method

.method public setRightTitle(Ljava/lang/String;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/phicomm/speaker/views/ItemBar;->d:Ljava/lang/String;

    return-void
.end method
