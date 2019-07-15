.class final Lcom/phicomm/speaker/f/ad$2;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/f/ad;->a(Landroid/widget/TextView;ILandroid/widget/EditText;ILandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:I

.field final synthetic e:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;II)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/f/ad$2;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/phicomm/speaker/f/ad$2;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/phicomm/speaker/f/ad$2;->c:Landroid/widget/TextView;

    iput p4, p0, Lcom/phicomm/speaker/f/ad$2;->d:I

    iput p5, p0, Lcom/phicomm/speaker/f/ad$2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 65
    iget-object p1, p0, Lcom/phicomm/speaker/f/ad$2;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/f/ad$2;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/f/ad$2;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v3, p0, Lcom/phicomm/speaker/f/ad$2;->c:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v4, p0, Lcom/phicomm/speaker/f/ad$2;->d:I

    if-lt v0, v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v0, p0, Lcom/phicomm/speaker/f/ad$2;->e:I

    if-lt p1, v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/f/ad$2;->c:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v3, p0, Lcom/phicomm/speaker/f/ad$2;->e:I

    if-lt p1, v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

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
