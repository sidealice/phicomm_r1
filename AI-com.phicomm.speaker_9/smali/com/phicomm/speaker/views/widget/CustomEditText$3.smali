.class Lcom/phicomm/speaker/views/widget/CustomEditText$3;
.super Ljava/lang/Object;
.source "CustomEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/widget/CustomEditText;->setCursorSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/phicomm/speaker/views/widget/CustomEditText;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/widget/CustomEditText;I)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$3;->b:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iput p2, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 290
    iget-object v0, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$3;->b:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget v1, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$3;->a:I

    iget-object v2, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$3;->b:Lcom/phicomm/speaker/views/widget/CustomEditText;

    iget v3, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$3;->a:I

    iget-object v4, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$3;->b:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v4}, Lcom/phicomm/speaker/views/widget/CustomEditText;->g(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$3;->b:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-static {v5}, Lcom/phicomm/speaker/views/widget/CustomEditText;->g(Lcom/phicomm/speaker/views/widget/CustomEditText;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lcom/phicomm/speaker/views/widget/CustomEditText;->a(Lcom/phicomm/speaker/views/widget/CustomEditText;IIILjava/util/List;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/phicomm/speaker/views/widget/CustomEditText$3;->b:Lcom/phicomm/speaker/views/widget/CustomEditText;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/widget/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/views/widget/CustomEditText;->c(Lcom/phicomm/speaker/views/widget/CustomEditText;I)V

    return-void
.end method
