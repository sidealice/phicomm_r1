.class final Lrx/internal/operators/i$h;
.super Ljava/util/ArrayList;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lrx/internal/operators/i$d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 843
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 847
    invoke-static {p1}, Lrx/internal/operators/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/i$h;->add(Ljava/lang/Object;)Z

    .line 848
    iget p1, p0, Lrx/internal/operators/i$h;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lrx/internal/operators/i$h;->a:I

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 853
    invoke-static {p1}, Lrx/internal/operators/b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/i$h;->add(Ljava/lang/Object;)Z

    .line 854
    iget p1, p0, Lrx/internal/operators/i$h;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lrx/internal/operators/i$h;->a:I

    return-void
.end method

.method public a(Lrx/internal/operators/i$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/i$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 865
    monitor-enter p1

    .line 866
    :try_start_0
    iget-boolean v0, p1, Lrx/internal/operators/i$b;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 867
    iput-boolean v1, p1, Lrx/internal/operators/i$b;->f:Z

    .line 868
    monitor-exit p1

    return-void

    .line 870
    :cond_0
    iput-boolean v1, p1, Lrx/internal/operators/i$b;->e:Z

    .line 871
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 873
    :goto_0
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 876
    :cond_1
    iget v0, p0, Lrx/internal/operators/i$h;->a:I

    .line 878
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 879
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 881
    :goto_1
    iget-object v3, p1, Lrx/internal/operators/i$b;->b:Lrx/i;

    if-nez v3, :cond_3

    return-void

    .line 886
    :cond_3
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_2
    cmp-long v10, v8, v4

    if-eqz v10, :cond_7

    if-ge v1, v0, :cond_7

    .line 890
    invoke-virtual {p0, v1}, Lrx/internal/operators/i$h;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 892
    :try_start_1
    invoke-static {v3, v10}, Lrx/internal/operators/b;->a(Lrx/d;Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v11, :cond_4

    return-void

    .line 903
    :cond_4
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->isUnsubscribed()Z

    move-result v10

    if-eqz v10, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, 0x1

    const-wide/16 v10, 0x1

    add-long v12, v8, v10

    move-wide v8, v12

    goto :goto_2

    :catch_0
    move-exception v0

    .line 896
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 897
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->unsubscribe()V

    .line 898
    invoke-static {v10}, Lrx/internal/operators/b;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v10}, Lrx/internal/operators/b;->b(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 899
    invoke-static {v10}, Lrx/internal/operators/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v3, p1}, Lrx/i;->onError(Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 910
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lrx/internal/operators/i$b;->c:Ljava/lang/Object;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v3, v4, v0

    if-eqz v3, :cond_8

    .line 912
    invoke-virtual {p1, v8, v9}, Lrx/internal/operators/i$b;->b(J)J

    .line 916
    :cond_8
    monitor-enter p1

    .line 917
    :try_start_2
    iget-boolean v0, p1, Lrx/internal/operators/i$b;->f:Z

    if-nez v0, :cond_9

    .line 918
    iput-boolean v2, p1, Lrx/internal/operators/i$b;->e:Z

    .line 919
    monitor-exit p1

    return-void

    .line 921
    :cond_9
    iput-boolean v2, p1, Lrx/internal/operators/i$b;->f:Z

    .line 922
    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 871
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public c()V
    .locals 1

    .line 859
    invoke-static {}, Lrx/internal/operators/b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/i$h;->add(Ljava/lang/Object;)Z

    .line 860
    iget v0, p0, Lrx/internal/operators/i$h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/i$h;->a:I

    return-void
.end method
