.class public abstract Lcom/bumptech/glide/f/b/k;
.super Lcom/bumptech/glide/f/b/a;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/f/b/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/f/b/a<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static b:Z = false

.field private static c:Ljava/lang/Integer;


# instance fields
.field protected final a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/f/b/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/bumptech/glide/f/b/a;-><init>()V

    if-nez p1, :cond_0

    .line 76
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "View must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/f/b/k;->a:Landroid/view/View;

    .line 79
    new-instance v0, Lcom/bumptech/glide/f/b/k$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/f/b/k$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/f/b/k;->d:Lcom/bumptech/glide/f/b/k$a;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .line 140
    sget-object v0, Lcom/bumptech/glide/f/b/k;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 141
    sput-boolean v0, Lcom/bumptech/glide/f/b/k;->b:Z

    .line 142
    iget-object v0, p0, Lcom/bumptech/glide/f/b/k;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/b/k;->a:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/f/b/k;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private g()Ljava/lang/Object;
    .locals 2

    .line 149
    sget-object v0, Lcom/bumptech/glide/f/b/k;->c:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/bumptech/glide/f/b/k;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/b/k;->a:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/f/b/k;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/f/b/k;->a:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/f/b/h;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/f/b/k;->d:Lcom/bumptech/glide/f/b/k$a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f/b/k$a;->a(Lcom/bumptech/glide/f/b/h;)V

    return-void
.end method

.method public a(Lcom/bumptech/glide/f/b;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/bumptech/glide/f/b/k;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Lcom/bumptech/glide/f/b;
    .locals 2

    .line 127
    invoke-direct {p0}, Lcom/bumptech/glide/f/b/k;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    instance-of v1, v0, Lcom/bumptech/glide/f/b;

    if-eqz v1, :cond_0

    .line 131
    check-cast v0, Lcom/bumptech/glide/f/b;

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/f/b/k;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
