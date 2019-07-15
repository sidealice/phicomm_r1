.class Lcom/phicomm/speaker/views/MyEditText$3;
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

    .line 139
    iput-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$3;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 142
    iget-object p1, p0, Lcom/phicomm/speaker/views/MyEditText$3;->a:Lcom/phicomm/speaker/views/MyEditText;

    invoke-static {p1}, Lcom/phicomm/speaker/views/MyEditText;->d(Lcom/phicomm/speaker/views/MyEditText;)Landroid/support/v7/widget/AppCompatEditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
