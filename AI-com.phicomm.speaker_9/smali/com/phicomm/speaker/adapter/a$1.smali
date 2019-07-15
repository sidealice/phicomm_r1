.class Lcom/phicomm/speaker/adapter/a$1;
.super Ljava/lang/Object;
.source "FavoriteListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/adapter/a;->a(Landroid/view/ViewGroup;I)Lcom/phicomm/speaker/adapter/a$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/adapter/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/adapter/a;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/a$1;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 488
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 489
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a$1;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-static {v1}, Lcom/phicomm/speaker/adapter/a;->a(Lcom/phicomm/speaker/adapter/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a$1;->a:Lcom/phicomm/speaker/adapter/a;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a$1;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/adapter/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/adapter/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a$1;->a:Lcom/phicomm/speaker/adapter/a;

    iget-object v2, p0, Lcom/phicomm/speaker/adapter/a$1;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/adapter/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/adapter/a;->d(Ljava/lang/String;)V

    .line 494
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a$1;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/adapter/a;->a(Lcom/phicomm/speaker/adapter/a;I)V

    .line 495
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a$1;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-static {v1}, Lcom/phicomm/speaker/adapter/a;->b(Lcom/phicomm/speaker/adapter/a;)Lcom/phicomm/speaker/adapter/a$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/phicomm/speaker/adapter/a$1;->a:Lcom/phicomm/speaker/adapter/a;

    invoke-static {v1}, Lcom/phicomm/speaker/adapter/a;->b(Lcom/phicomm/speaker/adapter/a;)Lcom/phicomm/speaker/adapter/a$a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/phicomm/speaker/adapter/a$a;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
