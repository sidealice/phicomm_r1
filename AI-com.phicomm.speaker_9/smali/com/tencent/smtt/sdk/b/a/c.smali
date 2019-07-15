.class Lcom/tencent/smtt/sdk/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/b/a/a;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/c;->a:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/smtt/sdk/b/a/c;->a:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/b/a/a;->a(Lcom/tencent/smtt/sdk/b/a/a;)Lcom/tencent/smtt/sdk/b/a/e;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/b/a/c;->a:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/b/a/a;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
