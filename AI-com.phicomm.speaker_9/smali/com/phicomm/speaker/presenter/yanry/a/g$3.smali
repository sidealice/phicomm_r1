.class Lcom/phicomm/speaker/presenter/yanry/a/g$3;
.super Ljava/lang/Object;
.source "ReminderPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field final synthetic b:Lcom/phicomm/speaker/adapter/c;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/phicomm/speaker/presenter/yanry/a/g;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/yanry/a/g;Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;Landroid/view/View;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->d:Lcom/phicomm/speaker/presenter/yanry/a/g;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->a:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->b:Lcom/phicomm/speaker/adapter/c;

    iput-object p4, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->d:Lcom/phicomm/speaker/presenter/yanry/a/g;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->b:Lcom/phicomm/speaker/adapter/c;

    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/presenter/yanry/a/g;->a(Lcom/phicomm/speaker/presenter/yanry/a/g;Landroid/support/v7/widget/RecyclerView;Lcom/phicomm/speaker/adapter/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->b:Lcom/phicomm/speaker/adapter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/c;->c()I

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->b:Lcom/phicomm/speaker/adapter/c;

    iget-object v1, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/adapter/c;->a(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->b:Lcom/phicomm/speaker/adapter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/c;->notifyDataSetChanged()V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->b:Lcom/phicomm/speaker/adapter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/c;->c()I

    move-result v0

    if-lez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->b:Lcom/phicomm/speaker/adapter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/c;->a()V

    .line 182
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/yanry/a/g$3;->b:Lcom/phicomm/speaker/adapter/c;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/c;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
