.class Lcom/phicomm/speaker/views/widget/CustomEditText$2$1;
.super Ljava/lang/Object;
.source "CustomEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/widget/CustomEditText$2;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/widget/CustomEditText$2;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/widget/CustomEditText$2;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText$2;

    iget-object v0, v0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object v1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText$2;

    iget-object v1, v1, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object v2, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText$2;

    iget-object v2, v2, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v2}, Lcom/phicomm/speaker/views/widget/CustomEditText;->c(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText$2;

    iget-object v0, v0, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget-object v1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$2$1;->a:Lcom/phicomm/speaker/views/widget/CustomEditText$2;

    iget-object v1, v1, Lcom/phicomm/speaker/views/widget/CustomEditText$2;->a:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->f(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
