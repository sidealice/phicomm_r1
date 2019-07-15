.class Lcom/phicomm/speaker/views/MyEditText$a;
.super Ljava/lang/Object;
.source "MyEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/views/MyEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field final synthetic d:Lcom/phicomm/speaker/views/MyEditText;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/views/MyEditText;)V
    .locals 1

    .line 171
    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 176
    iput p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->e:I

    const-string v0, ""

    .line 180
    iput-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->f:Ljava/lang/String;

    .line 181
    iput p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    const-string p1, ""

    .line 187
    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->a:Ljava/lang/String;

    const-string p1, ""

    .line 191
    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/views/MyEditText;Lcom/phicomm/speaker/views/MyEditText$1;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/views/MyEditText$a;-><init>(Lcom/phicomm/speaker/views/MyEditText;)V

    return-void
.end method

.method private a()V
    .locals 6

    .line 268
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->f:Ljava/lang/String;

    .line 269
    iget v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->c:I

    iput v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->e:I

    const/4 v0, 0x0

    move v1, v0

    .line 271
    :goto_0
    iget v2, p0, Lcom/phicomm/speaker/views/MyEditText$a;->c:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 274
    iget-object v2, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    add-int v4, v0, v1

    const-string v5, " "

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object v2, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v2, v3}, Lcom/phicomm/speaker/views/MyEditText;->b(Lcom/phicomm/speaker/views/MyEditText;Z)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->k(Lcom/phicomm/speaker/views/MyEditText;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    if-le v0, v3, :cond_4

    .line 281
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 282
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setSelection(I)V

    goto :goto_1

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setSelection(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private b()V
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->f:Ljava/lang/String;

    .line 293
    iget v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->c:I

    iput v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->e:I

    .line 295
    iget v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0, v2}, Lcom/phicomm/speaker/views/MyEditText;->b(Lcom/phicomm/speaker/views/MyEditText;Z)Z

    .line 297
    iput v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 299
    :goto_0
    iget v3, p0, Lcom/phicomm/speaker/views/MyEditText$a;->c:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 302
    iget-object v3, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    add-int v4, v0, v1

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v3, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v3, v2}, Lcom/phicomm/speaker/views/MyEditText;->b(Lcom/phicomm/speaker/views/MyEditText;Z)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->k(Lcom/phicomm/speaker/views/MyEditText;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 308
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->f:Ljava/lang/String;

    iget v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 310
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setSelection(I)V

    goto :goto_2

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatEditText;->setSelection(I)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v1}, Lcom/phicomm/speaker/views/MyEditText;->c(Lcom/phicomm/speaker/views/MyEditText;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v1}, Lcom/phicomm/speaker/views/MyEditText;->a(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v4, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v4}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatEditText;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->a(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :goto_1
    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->h(Lcom/phicomm/speaker/views/MyEditText;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 207
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->g(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->g(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->i(Lcom/phicomm/speaker/views/MyEditText;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_7

    .line 221
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->j(Lcom/phicomm/speaker/views/MyEditText;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 225
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->k(Lcom/phicomm/speaker/views/MyEditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->e:I

    .line 227
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/phicomm/speaker/views/MyEditText;->b(Lcom/phicomm/speaker/views/MyEditText;Z)Z

    return-void

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    .line 231
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getSelectionEnd()I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    .line 232
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->a:Ljava/lang/String;

    .line 233
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->a:Ljava/lang/String;

    const-string p2, " "

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->b:Ljava/lang/String;

    .line 234
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/phicomm/speaker/views/MyEditText$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->c:I

    .line 237
    iget p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->c:I

    iget p2, p0, Lcom/phicomm/speaker/views/MyEditText$a;->e:I

    if-ne p1, p2, :cond_4

    .line 238
    iget p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->c:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 239
    invoke-direct {p0}, Lcom/phicomm/speaker/views/MyEditText$a;->a()V

    goto :goto_0

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getSelectionStart()I

    move-result p1

    if-nez p1, :cond_3

    .line 243
    invoke-direct {p0}, Lcom/phicomm/speaker/views/MyEditText$a;->a()V

    goto :goto_0

    .line 245
    :cond_3
    iget-object p2, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p2}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    add-int/lit8 p3, p1, -0x1

    .line 246
    invoke-interface {p2, p3, p1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    .line 249
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getSelectionEnd()I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->g:I

    .line 250
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->d:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->a:Ljava/lang/String;

    .line 251
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->a:Ljava/lang/String;

    const-string p2, " "

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->b:Ljava/lang/String;

    .line 252
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->h:Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/phicomm/speaker/views/MyEditText$a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->c:I

    .line 255
    invoke-direct {p0}, Lcom/phicomm/speaker/views/MyEditText$a;->b()V

    goto :goto_0

    .line 258
    :cond_4
    iget p1, p0, Lcom/phicomm/speaker/views/MyEditText$a;->c:I

    iget p2, p0, Lcom/phicomm/speaker/views/MyEditText$a;->e:I

    if-le p1, p2, :cond_5

    .line 259
    invoke-direct {p0}, Lcom/phicomm/speaker/views/MyEditText$a;->a()V

    goto :goto_0

    .line 261
    :cond_5
    invoke-direct {p0}, Lcom/phicomm/speaker/views/MyEditText$a;->b()V

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    return-void
.end method
