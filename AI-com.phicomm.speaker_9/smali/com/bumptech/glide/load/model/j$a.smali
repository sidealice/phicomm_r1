.class final Lcom/bumptech/glide/load/model/j$a;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/load/model/j$a<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Lcom/bumptech/glide/h/h;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/j$a;->a:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/model/j$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/bumptech/glide/load/model/j$a<",
            "TA;>;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/bumptech/glide/load/model/j$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/j$a;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/bumptech/glide/load/model/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/j$a;-><init>()V

    .line 78
    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/model/j$a;->b(Ljava/lang/Object;II)V

    return-object v0
.end method

.method private b(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/bumptech/glide/load/model/j$a;->d:Ljava/lang/Object;

    .line 86
    iput p2, p0, Lcom/bumptech/glide/load/model/j$a;->c:I

    .line 87
    iput p3, p0, Lcom/bumptech/glide/load/model/j$a;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 91
    sget-object v0, Lcom/bumptech/glide/load/model/j$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 96
    instance-of v0, p1, Lcom/bumptech/glide/load/model/j$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 97
    check-cast p1, Lcom/bumptech/glide/load/model/j$a;

    .line 98
    iget v0, p0, Lcom/bumptech/glide/load/model/j$a;->c:I

    iget v2, p1, Lcom/bumptech/glide/load/model/j$a;->c:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/bumptech/glide/load/model/j$a;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/model/j$a;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/model/j$a;->d:Ljava/lang/Object;

    iget-object p1, p1, Lcom/bumptech/glide/load/model/j$a;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 105
    iget v0, p0, Lcom/bumptech/glide/load/model/j$a;->b:I

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    .line 106
    iget v2, p0, Lcom/bumptech/glide/load/model/j$a;->c:I

    add-int/2addr v0, v2

    mul-int/2addr v1, v0

    .line 107
    iget-object v0, p0, Lcom/bumptech/glide/load/model/j$a;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
