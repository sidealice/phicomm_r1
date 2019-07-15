.class Lcom/phicomm/speaker/f/p$1;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/f/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/f/p;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/f/p;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/f/p$1;->a:Lcom/phicomm/speaker/f/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/phicomm/speaker/f/p$1;->a:Lcom/phicomm/speaker/f/p;

    invoke-static {v1}, Lcom/phicomm/speaker/f/p;->a(Lcom/phicomm/speaker/f/p;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 49
    iget-object v1, p0, Lcom/phicomm/speaker/f/p$1;->a:Lcom/phicomm/speaker/f/p;

    invoke-static {v1}, Lcom/phicomm/speaker/f/p;->b(Lcom/phicomm/speaker/f/p;)I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/f/p$1;->a:Lcom/phicomm/speaker/f/p;

    invoke-static {v0}, Lcom/phicomm/speaker/f/p;->c(Lcom/phicomm/speaker/f/p;)Lcom/phicomm/speaker/f/p$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/f/p$1;->a:Lcom/phicomm/speaker/f/p;

    invoke-static {v0}, Lcom/phicomm/speaker/f/p;->d(Lcom/phicomm/speaker/f/p;)I

    move-result v0

    if-eq v1, v0, :cond_1

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/f/p$1;->a:Lcom/phicomm/speaker/f/p;

    invoke-static {v0}, Lcom/phicomm/speaker/f/p;->c(Lcom/phicomm/speaker/f/p;)Lcom/phicomm/speaker/f/p$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/f/p$a;->a(I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/f/p$1;->a:Lcom/phicomm/speaker/f/p;

    invoke-static {v0}, Lcom/phicomm/speaker/f/p;->c(Lcom/phicomm/speaker/f/p;)Lcom/phicomm/speaker/f/p$a;

    move-result-object v0

    iget-object v2, p0, Lcom/phicomm/speaker/f/p$1;->a:Lcom/phicomm/speaker/f/p;

    invoke-static {v2}, Lcom/phicomm/speaker/f/p;->d(Lcom/phicomm/speaker/f/p;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/phicomm/speaker/f/p$a;->b(I)V

    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/phicomm/speaker/f/p$1;->a:Lcom/phicomm/speaker/f/p;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/p;->a(Lcom/phicomm/speaker/f/p;I)I

    return-void
.end method
