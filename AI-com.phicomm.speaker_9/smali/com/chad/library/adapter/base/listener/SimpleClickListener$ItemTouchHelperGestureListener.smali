.class Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;
.super Ljava/lang/Object;
.source "SimpleClickListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/listener/SimpleClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method private resetPressedView(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 159
    new-instance v0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener$1;

    invoke-direct {v0, p0, p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener$1;-><init>(Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;Landroid/view/View;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$002(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Z)Z

    .line 171
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$102(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroid/view/View;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$002(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Z)Z

    .line 81
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/widget/RecyclerView;->a(FF)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$102(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroid/view/View;)Landroid/view/View;

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$000(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 181
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 182
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v2}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 183
    iget-object v2, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$300(Lcom/chad/library/adapter/base/listener/SimpleClickListener;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 184
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getItemChildLongClickViewIds()Ljava/util/HashSet;

    move-result-object v2

    .line 185
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getNestViews()Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 186
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 187
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 188
    iget-object v7, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v7}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 189
    iget-object v8, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-virtual {v8, v7, p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v3, :cond_2

    .line 190
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 194
    :cond_2
    iget-object v3, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v3, p1, v7}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$400(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 195
    iget-object v3, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v5, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v5, v5, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v6

    iget-object v8, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v8, v8, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v8}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v3, v5, v7, v6}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->onItemChildLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 196
    invoke-virtual {v7, v4}, Landroid/view/View;->setPressed(Z)V

    .line 197
    iget-object v3, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v3, v4}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$202(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Z)Z

    :goto_0
    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-nez v3, :cond_6

    .line 204
    iget-object v3, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v5, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v5, v5, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iget-object v6, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v6}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v0

    iget-object v7, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v7, v7, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v7

    sub-int/2addr v0, v7

    invoke-virtual {v3, v5, v6, v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 205
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v3, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v3}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$400(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 206
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    if-eqz v2, :cond_5

    .line 208
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 209
    iget-object v2, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v2}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 215
    :cond_5
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {p1, v4}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$202(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Z)Z

    :cond_6
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$000(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$202(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Z)Z

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 99
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$000(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 100
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object v0

    .line 104
    iget-object v3, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$t;

    move-result-object v3

    check-cast v3, Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 106
    iget-object v4, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v5

    invoke-static {v4, v5}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$300(Lcom/chad/library/adapter/base/listener/SimpleClickListener;I)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    .line 109
    :cond_1
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getChildClickViewIds()Ljava/util/HashSet;

    move-result-object v4

    .line 110
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getNestViews()Ljava/util/Set;

    move-result-object v5

    if-eqz v4, :cond_8

    .line 111
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 112
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 113
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 115
    iget-object v9, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-virtual {v9, v8, p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v5, :cond_3

    .line 116
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v0, p1, v8}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$400(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 120
    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    .line 121
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v0, v0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v2

    iget-object v3, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v3, v3, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v8, v2}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 122
    invoke-direct {p0, v8}, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->resetPressedView(Landroid/view/View;)V

    return v1

    .line 125
    :cond_4
    invoke-virtual {v8, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 129
    :cond_5
    iget-object v5, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v5, p1, v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$400(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 130
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 131
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 132
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 134
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 137
    :cond_7
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v2, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v2, v2, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v3

    iget-object v4, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v4, v4, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v0, v3}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    goto :goto_3

    .line 139
    :cond_8
    iget-object v5, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {v5, p1, v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$400(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroid/view/MotionEvent;Landroid/view/View;)V

    .line 140
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    invoke-static {p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    if-eqz v4, :cond_a

    .line 141
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 142
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 143
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 145
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2

    .line 149
    :cond_a
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v2, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v2, v2, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseViewHolder;->getLayoutPosition()I

    move-result v3

    iget-object v4, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->this$0:Lcom/chad/library/adapter/base/listener/SimpleClickListener;

    iget-object v4, v4, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getHeaderLayoutCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v0, v3}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 151
    :goto_3
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;->resetPressedView(Landroid/view/View;)V

    :cond_b
    return v1
.end method
