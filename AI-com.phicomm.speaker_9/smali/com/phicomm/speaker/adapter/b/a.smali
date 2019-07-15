.class public abstract Lcom/phicomm/speaker/adapter/b/a;
.super Ljava/lang/Object;
.source "BaseChatItemView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/phicomm/speaker/adapter/a/a/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Lcom/phicomm/speaker/adapter/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->d:Landroid/animation/ObjectAnimator;

    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->a:Landroid/content/Context;

    .line 41
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/adapter/b/a;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/phicomm/speaker/adapter/b/a;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->b:Landroid/view/View;

    return-object v0
.end method

.method protected abstract a(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/b/a;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected a(Landroid/widget/TextView;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->c:Lcom/phicomm/speaker/adapter/a/a/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 61
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->c:Lcom/phicomm/speaker/adapter/a/a/a;

    invoke-virtual {v0}, Lcom/phicomm/speaker/adapter/a/a/a;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/g;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/phicomm/speaker/adapter/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/adapter/b/a;->c:Lcom/phicomm/speaker/adapter/a/a/a;

    return-void
.end method

.method public b()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->c:Lcom/phicomm/speaker/adapter/a/a/a;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->c:Lcom/phicomm/speaker/adapter/a/a/a;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/adapter/b/a;->b(Lcom/phicomm/speaker/adapter/a/a/a;)V

    return-void
.end method

.method public abstract b(Lcom/phicomm/speaker/adapter/a/a/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract c()Landroid/view/View;
.end method

.method public d()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/b/a;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/b/a;->d()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/b/a;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/b/a;->e()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/phicomm/speaker/f/ad;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->d:Landroid/animation/ObjectAnimator;

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/b/a;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/phicomm/speaker/adapter/b/a;->d()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->d:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/adapter/b/a;->d:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_1
    return-void
.end method
