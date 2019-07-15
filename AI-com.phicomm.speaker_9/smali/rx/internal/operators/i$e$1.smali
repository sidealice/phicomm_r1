.class Lrx/internal/operators/i$e$1;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/i$e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/internal/operators/i$e;


# direct methods
.method constructor <init>(Lrx/internal/operators/i$e;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lrx/internal/operators/i$e$1;->a:Lrx/internal/operators/i$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 364
    iget-object v0, p0, Lrx/internal/operators/i$e$1;->a:Lrx/internal/operators/i$e;

    iget-boolean v0, v0, Lrx/internal/operators/i$e;->e:Z

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lrx/internal/operators/i$e$1;->a:Lrx/internal/operators/i$e;

    iget-object v0, v0, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/i$e$1;->a:Lrx/internal/operators/i$e;

    iget-boolean v1, v1, Lrx/internal/operators/i$e;->e:Z

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lrx/internal/operators/i$e$1;->a:Lrx/internal/operators/i$e;

    iget-object v1, v1, Lrx/internal/operators/i$e;->f:Lrx/internal/util/c;

    invoke-virtual {v1}, Lrx/internal/util/c;->a()V

    .line 368
    iget-object v1, p0, Lrx/internal/operators/i$e$1;->a:Lrx/internal/operators/i$e;

    iget-wide v2, v1, Lrx/internal/operators/i$e;->h:J

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    iput-wide v6, v1, Lrx/internal/operators/i$e;->h:J

    .line 369
    iget-object v1, p0, Lrx/internal/operators/i$e$1;->a:Lrx/internal/operators/i$e;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lrx/internal/operators/i$e;->e:Z

    .line 371
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
