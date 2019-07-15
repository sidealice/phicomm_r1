.class Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;
.super Ljava/lang/Object;
.source "ImageSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;


# direct methods
.method constructor <init>(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/view/ActionMode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    iget-object p2, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    iget-object p4, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p4}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$200(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/view/ActionMode$Callback;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$102(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1, p3}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$300(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;I)V

    .line 116
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p3}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$400(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    sget p4, Lcom/darsh/multipleimageselect/R$string;->selected:I

    invoke-virtual {p3, p4}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$400(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)I

    move-result p1

    if-nez p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$2;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$100(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method
