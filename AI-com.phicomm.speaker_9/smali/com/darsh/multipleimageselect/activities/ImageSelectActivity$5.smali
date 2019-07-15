.class Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$5;
.super Ljava/lang/Object;
.source "ImageSelectActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;
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

    .line 307
    iput-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$5;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 325
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 326
    sget p2, Lcom/darsh/multipleimageselect/R$id;->menu_item_add_image:I

    if-ne p1, p2, :cond_0

    .line 327
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$5;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1400(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 310
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 311
    sget v1, Lcom/darsh/multipleimageselect/R$menu;->menu_contextual_action_bar:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 313
    iget-object p2, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$5;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p2, p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$102(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 314
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$5;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$402(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;I)I

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 335
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$5;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$400(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)I

    move-result p1

    if-lez p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$5;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    invoke-static {p1}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$1500(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;)V

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity$5;->this$0:Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;->access$102(Lcom/darsh/multipleimageselect/activities/ImageSelectActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
