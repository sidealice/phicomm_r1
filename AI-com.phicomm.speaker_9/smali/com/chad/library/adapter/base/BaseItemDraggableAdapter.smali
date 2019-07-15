.class public abstract Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "BaseItemDraggableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "TT;TK;>;"
    }
.end annotation


# static fields
.field private static final ERROR_NOT_SAME_ITEMTOUCHHELPER:Ljava/lang/String; = "Item drag and item swipe should pass the same ItemTouchHelper"

.field private static final NO_TOGGLE_VIEW:I


# instance fields
.field protected itemDragEnabled:Z

.field protected itemSwipeEnabled:Z

.field protected mDragOnLongPress:Z

.field protected mItemTouchHelper:Landroid/support/v7/widget/a/a;

.field protected mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

.field protected mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

.field protected mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

.field protected mToggleViewId:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    .line 27
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 28
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    .line 27
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 28
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    return-void
.end method

.method private inRange(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public disableDragItem()V
    .locals 1

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/a/a;

    return-void
.end method

.method public disableSwipeItem()V
    .locals 1

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    return-void
.end method

.method public enableDragItem(Landroid/support/v7/widget/a/a;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 135
    invoke-virtual {p0, p1, v0, v1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->enableDragItem(Landroid/support/v7/widget/a/a;IZ)V

    return-void
.end method

.method public enableDragItem(Landroid/support/v7/widget/a/a;IZ)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/a/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    .line 147
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/a/a;

    .line 148
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->setToggleViewId(I)V

    .line 149
    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->setToggleDragOnLongPress(Z)V

    return-void
.end method

.method public enableSwipeItem()V
    .locals 1

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    return-void
.end method

.method public getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$t;)I
    .locals 1

    .line 188
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getHeaderLayoutCount()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public isItemDraggable()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    return v0
.end method

.method public isItemSwipeEnable()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$t;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/BaseViewHolder;I)V

    .line 58
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getItemViewType()I

    move-result p2

    .line 60
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mItemTouchHelper:Landroid/support/v7/widget/a/a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x222

    if-eq p2, v0, :cond_2

    const/16 v0, 0x111

    if-eq p2, v0, :cond_2

    const/16 v0, 0x555

    if-eq p2, v0, :cond_2

    const/16 v0, 0x333

    if-eq p2, v0, :cond_2

    .line 62
    iget p2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    if-eqz p2, :cond_1

    .line 63
    iget p2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 65
    sget v0, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 66
    iget-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object p2, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/chad/library/R$id;->BaseQuickAdapter_viewholder_support:I

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 74
    iget-object p1, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemDragEnd(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragEnd(Landroid/support/v7/widget/RecyclerView$t;I)V

    :cond_0
    return-void
.end method

.method public onItemDragMoving(Landroid/support/v7/widget/RecyclerView$t;Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 5

    .line 198
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    .line 199
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v1

    .line 201
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->inRange(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->inRange(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ge v0, v1, :cond_0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 204
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mData:Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-le v2, v1, :cond_1

    .line 208
    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mData:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->getAdapterPosition()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$t;->getAdapterPosition()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->notifyItemMoved(II)V

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v2, :cond_3

    .line 215
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    invoke-interface {v2, p1, v0, p2, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragMoving(Landroid/support/v7/widget/RecyclerView$t;ILandroid/support/v7/widget/RecyclerView$t;I)V

    :cond_3
    return-void
.end method

.method public onItemDragStart(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemDragEnabled:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemDragListener;->onItemDragStart(Landroid/support/v7/widget/RecyclerView$t;I)V

    :cond_0
    return-void
.end method

.method public onItemSwipeClear(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->clearView(Landroid/support/v7/widget/RecyclerView$t;I)V

    :cond_0
    return-void
.end method

.method public onItemSwipeStart(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwipeStart(Landroid/support/v7/widget/RecyclerView$t;I)V

    :cond_0
    return-void
.end method

.method public onItemSwiped(Landroid/support/v7/widget/RecyclerView$t;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwiped(Landroid/support/v7/widget/RecyclerView$t;I)V

    .line 246
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->getViewHolderPosition(Landroid/support/v7/widget/RecyclerView$t;)I

    move-result v0

    .line 248
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->inRange(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 250
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$t;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->notifyItemRemoved(I)V

    :cond_1
    return-void
.end method

.method public onItemSwiping(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView$t;FFZ)V
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->itemSwipeEnabled:Z

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;->onItemSwipeMoving(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView$t;FFZ)V

    :cond_0
    return-void
.end method

.method public setOnItemDragListener(Lcom/chad/library/adapter/base/listener/OnItemDragListener;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemDragListener:Lcom/chad/library/adapter/base/listener/OnItemDragListener;

    return-void
.end method

.method public setOnItemSwipeListener(Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnItemSwipeListener:Lcom/chad/library/adapter/base/listener/OnItemSwipeListener;

    return-void
.end method

.method public setToggleDragOnLongPress(Z)V
    .locals 1

    .line 97
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    .line 98
    iget-boolean p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mDragOnLongPress:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 99
    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 100
    new-instance p1, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$1;-><init>(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    goto :goto_0

    .line 110
    :cond_0
    new-instance p1, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$2;

    invoke-direct {p1, p0}, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter$2;-><init>(Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 124
    iput-object v0, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mOnToggleViewLongClickListener:Landroid/view/View$OnLongClickListener;

    :goto_0
    return-void
.end method

.method public setToggleViewId(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/chad/library/adapter/base/BaseItemDraggableAdapter;->mToggleViewId:I

    return-void
.end method
