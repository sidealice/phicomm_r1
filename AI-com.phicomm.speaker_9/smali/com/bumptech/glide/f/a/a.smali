.class public Lcom/bumptech/glide/f/a/a;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/f/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/f/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/f/a/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/f/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/a/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lcom/bumptech/glide/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/a/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/f/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/f/a/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x12c

    .line 30
    invoke-direct {p0, v0}, Lcom/bumptech/glide/f/a/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 34
    new-instance v0, Lcom/bumptech/glide/f/a/g;

    new-instance v1, Lcom/bumptech/glide/f/a/a$a;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/f/a/a$a;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/f/a/g;-><init>(Lcom/bumptech/glide/f/a/f$a;)V

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/f/a/a;-><init>(Lcom/bumptech/glide/f/a/g;I)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/f/a/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/a/g<",
            "TT;>;I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bumptech/glide/f/a/a;->a:Lcom/bumptech/glide/f/a/g;

    .line 47
    iput p2, p0, Lcom/bumptech/glide/f/a/a;->b:I

    return-void
.end method

.method private a()Lcom/bumptech/glide/f/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/f/a/a;->c:Lcom/bumptech/glide/f/a/b;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/bumptech/glide/f/a/a;->a:Lcom/bumptech/glide/f/a/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/f/a/g;->a(ZZ)Lcom/bumptech/glide/f/a/c;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/bumptech/glide/f/a/b;

    iget v2, p0, Lcom/bumptech/glide/f/a/a;->b:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/f/a/b;-><init>(Lcom/bumptech/glide/f/a/c;I)V

    iput-object v1, p0, Lcom/bumptech/glide/f/a/a;->c:Lcom/bumptech/glide/f/a/b;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a/a;->c:Lcom/bumptech/glide/f/a/b;

    return-object v0
.end method

.method private b()Lcom/bumptech/glide/f/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/f/a/c<",
            "TT;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/f/a/a;->d:Lcom/bumptech/glide/f/a/b;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/f/a/a;->a:Lcom/bumptech/glide/f/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/bumptech/glide/f/a/g;->a(ZZ)Lcom/bumptech/glide/f/a/c;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/bumptech/glide/f/a/b;

    iget v2, p0, Lcom/bumptech/glide/f/a/a;->b:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/f/a/b;-><init>(Lcom/bumptech/glide/f/a/c;I)V

    iput-object v1, p0, Lcom/bumptech/glide/f/a/a;->d:Lcom/bumptech/glide/f/a/b;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/f/a/a;->d:Lcom/bumptech/glide/f/a/b;

    return-object v0
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/f/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/f/a/c<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lcom/bumptech/glide/f/a/e;->b()Lcom/bumptech/glide/f/a/c;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/bumptech/glide/f/a/a;->a()Lcom/bumptech/glide/f/a/c;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/f/a/a;->b()Lcom/bumptech/glide/f/a/c;

    move-result-object p1

    return-object p1
.end method
