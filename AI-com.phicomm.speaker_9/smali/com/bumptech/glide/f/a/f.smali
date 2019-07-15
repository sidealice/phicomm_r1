.class public Lcom/bumptech/glide/f/a/f;
.super Ljava/lang/Object;
.source "ViewAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/f/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/f/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/f/a/c<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/f/a/f$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/f/a/f$a;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/f/a/f;->a:Lcom/bumptech/glide/f/a/f$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/f/a/c$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/f/a/c$a;",
            ")Z"
        }
    .end annotation

    .line 36
    invoke-interface {p2}, Lcom/bumptech/glide/f/a/c$a;->a()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 39
    iget-object p2, p0, Lcom/bumptech/glide/f/a/f;->a:Lcom/bumptech/glide/f/a/f$a;

    invoke-interface {p2}, Lcom/bumptech/glide/f/a/f$a;->a()Landroid/view/animation/Animation;

    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
