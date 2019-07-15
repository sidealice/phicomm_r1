.class Lcom/phicomm/speaker/views/MyEditText$1;
.super Ljava/lang/Object;
.source "MyEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 104
    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$1;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$1;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->a(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 109
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$1;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->b(Lcom/phicomm/speaker/views/MyEditText;)V

    .line 110
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$1;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->c(Lcom/phicomm/speaker/views/MyEditText;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$1;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$1;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->a(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$1;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->e(Lcom/phicomm/speaker/views/MyEditText;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
