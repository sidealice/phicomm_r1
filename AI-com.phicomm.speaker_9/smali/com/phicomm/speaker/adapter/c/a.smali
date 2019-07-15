.class public Lcom/phicomm/speaker/adapter/c/a;
.super Landroid/support/v7/widget/RecyclerView$t;
.source "HomeChatViewHolder.java"


# instance fields
.field private a:Lcom/phicomm/speaker/adapter/b/a;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/adapter/b/a;)V
    .locals 1

    .line 18
    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/b/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/view/View;)V

    .line 19
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/c/a;->a:Lcom/phicomm/speaker/adapter/b/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c/a;->a:Lcom/phicomm/speaker/adapter/b/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/b/a;->b()V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/adapter/a/a/a;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c/a;->a:Lcom/phicomm/speaker/adapter/b/a;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/adapter/b/a;->a(Lcom/phicomm/speaker/adapter/a/a/a;)V

    return-void
.end method

.method public b()Lcom/phicomm/speaker/adapter/b/a;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/c/a;->a:Lcom/phicomm/speaker/adapter/b/a;

    return-object v0
.end method
