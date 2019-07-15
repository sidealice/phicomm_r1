.class Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;
.super Ljava/lang/Object;
.source "BaseItemDraggableAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->setToggleDragOnLongPress(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;->this$0:Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;->this$0:Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    iget-object v0, v0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;->this$0:Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    iget-boolean v0, v0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;->this$0:Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;

    iget-object v0, v0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/a/a;

    sget v1, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/RecyclerView$t;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
