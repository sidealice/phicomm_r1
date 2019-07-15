.class Lcom/phicomm/speaker/views/widget/CustomEditText$2;
.super Ljava/lang/Object;
.source "CustomEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/widget/CustomEditText;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/widget/CustomEditText;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/widget/CustomEditText;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->f(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->f(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 167
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->getWidth()I

    move-result p1

    if-gtz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    new-instance v0, Lcom/phicomm/speaker/views/widget/CustomEditText$2$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/views/widget/CustomEditText$2$1;-><init>(Lcom/phicomm/speaker/views/widget/CustomEditText$2;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object v1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->c(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->f(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->e(Lcom/phicomm/speaker/views/widget/CustomEditText;)I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object v2, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v2}, Lcom/phicomm/speaker/views/widget/CustomEditText;->e(Lcom/phicomm/speaker/views/widget/CustomEditText;)I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v4}, Lcom/phicomm/speaker/views/widget/CustomEditText;->g(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v5}, Lcom/phicomm/speaker/views/widget/CustomEditText;->g(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/util/List;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;IIILjava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->b(Lcom/phicomm/speaker/views/widget/CustomEditText;I)I

    .line 179
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->e(Lcom/phicomm/speaker/views/widget/CustomEditText;)I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->f(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->b(Lcom/phicomm/speaker/views/widget/CustomEditText;I)I

    .line 180
    iget-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->e(Lcom/phicomm/speaker/views/widget/CustomEditText;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/views/widget/CustomEditText;->setSelection(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
