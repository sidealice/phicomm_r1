.class public Lcom/zhy/a/a/a/a;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "ViewHolder.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p1, p0, Lcom/zhy/a/a/a/a;->c:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/zhy/a/a/a/a;->b:Landroid/view/View;

    .line 34
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/zhy/a/a/a/a;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/a/a/a/a;
    .locals 1

    .line 40
    new-instance v0, Lcom/zhy/a/a/a/a;

    invoke-direct {v0, p0, p1}, Lcom/zhy/a/a/a/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/zhy/a/a/a/a;
    .locals 2

    .line 47
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/zhy/a/a/a/a;

    invoke-direct {p2, p0, p1}, Lcom/zhy/a/a/a/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method
