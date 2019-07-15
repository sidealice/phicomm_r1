.class Lcom/zhy/a/a/c/b$1;
.super Ljava/lang/Object;
.source "LoadMoreWrapper.java"

# interfaces
.implements Lcom/zhy/a/a/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/a/a/c/b;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zhy/a/a/c/b;


# direct methods
.method constructor <init>(Lcom/zhy/a/a/c/b;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/zhy/a/a/c/b$1;->a:Lcom/zhy/a/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/GridLayoutManager$c;I)I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/zhy/a/a/c/b$1;->a:Lcom/zhy/a/a/c/b;

    invoke-static {v0, p3}, Lcom/zhy/a/a/c/b;->a(Lcom/zhy/a/a/c/b;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->c()I

    move-result p1

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/GridLayoutManager$c;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
