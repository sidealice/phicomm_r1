.class Lcom/phicomm/speaker/views/MyEditText$4;
.super Ljava/lang/Object;
.source "MyEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/MyEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/MyEditText;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/MyEditText;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->f(Lcom/phicomm/speaker/views/MyEditText;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->g(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f08012e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->g(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f080090

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 158
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    iget-object v0, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {v0}, Lcom/phicomm/speaker/views/MyEditText;->f(Lcom/phicomm/speaker/views/MyEditText;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/phicomm/speaker/views/MyEditText;->a(Lcom/phicomm/speaker/views/MyEditText;Z)Z

    .line 160
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->requestFocus()Z

    .line 161
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->requestFocusFromTouch()Z

    .line 162
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$4;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->b(Lcom/phicomm/speaker/views/MyEditText;)V

    return-void
.end method
