.class Lcom/phicomm/speaker/views/MyEditText$2;
.super Ljava/lang/Object;
.source "MyEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 120
    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$2;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$2;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatEditText;->clearFocus()V

    .line 126
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$2;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/q;->b(Landroid/view/View;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
