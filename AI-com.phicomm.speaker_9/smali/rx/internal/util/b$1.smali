.class Lrx/internal/util/b$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/util/b;


# direct methods
.method constructor <init>(Lrx/internal/util/b;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lrx/internal/util/b$1;->a:Lrx/internal/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    iget-object v0, p0, Lrx/internal/util/b$1;->a:Lrx/internal/util/b;

    iget-object v0, v0, Lrx/internal/util/b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    .line 118
    iget-object v1, p0, Lrx/internal/util/b$1;->a:Lrx/internal/util/b;

    iget v1, v1, Lrx/internal/util/b;->b:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lrx/internal/util/b$1;->a:Lrx/internal/util/b;

    iget v1, v1, Lrx/internal/util/b;->c:I

    sub-int/2addr v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 121
    iget-object v0, p0, Lrx/internal/util/b$1;->a:Lrx/internal/util/b;

    iget-object v0, v0, Lrx/internal/util/b;->a:Ljava/util/Queue;

    iget-object v3, p0, Lrx/internal/util/b$1;->a:Lrx/internal/util/b;

    invoke-virtual {v3}, Lrx/internal/util/b;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lrx/internal/util/b$1;->a:Lrx/internal/util/b;

    iget v1, v1, Lrx/internal/util/b;->c:I

    if-le v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Lrx/internal/util/b$1;->a:Lrx/internal/util/b;

    iget v1, v1, Lrx/internal/util/b;->c:I

    sub-int/2addr v0, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 127
    iget-object v1, p0, Lrx/internal/util/b$1;->a:Lrx/internal/util/b;

    iget-object v1, v1, Lrx/internal/util/b;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
