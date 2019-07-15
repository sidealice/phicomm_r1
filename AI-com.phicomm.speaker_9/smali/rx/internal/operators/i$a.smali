.class Lrx/internal/operators/i$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lrx/internal/operators/i$c;",
        ">;",
        "Lrx/internal/operators/i$d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Lrx/internal/operators/i$c;

.field b:I

.field c:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 961
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 962
    new-instance v0, Lrx/internal/operators/i$c;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/i$c;-><init>(Ljava/lang/Object;J)V

    .line 963
    iput-object v0, p0, Lrx/internal/operators/i$a;->a:Lrx/internal/operators/i$c;

    .line 964
    invoke-virtual {p0, v0}, Lrx/internal/operators/i$a;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 980
    invoke-virtual {p0}, Lrx/internal/operators/i$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/i$c;

    .line 981
    invoke-virtual {v0}, Lrx/internal/operators/i$c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/i$c;

    if-nez v0, :cond_0

    .line 983
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_0
    iget v1, p0, Lrx/internal/operators/i$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/i$a;->b:I

    .line 988
    invoke-virtual {p0, v0}, Lrx/internal/operators/i$a;->b(Lrx/internal/operators/i$c;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1020
    invoke-static {p1}, Lrx/internal/operators/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/i$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1021
    new-instance v0, Lrx/internal/operators/i$c;

    iget-wide v1, p0, Lrx/internal/operators/i$a;->c:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Lrx/internal/operators/i$a;->c:J

    invoke-direct {v0, p1, v5, v6}, Lrx/internal/operators/i$c;-><init>(Ljava/lang/Object;J)V

    .line 1022
    invoke-virtual {p0, v0}, Lrx/internal/operators/i$a;->a(Lrx/internal/operators/i$c;)V

    .line 1023
    invoke-virtual {p0}, Lrx/internal/operators/i$a;->d()V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 7

    .line 1028
    invoke-static {p1}, Lrx/internal/operators/b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrx/internal/operators/i$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1029
    new-instance v0, Lrx/internal/operators/i$c;

    iget-wide v1, p0, Lrx/internal/operators/i$a;->c:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Lrx/internal/operators/i$a;->c:J

    invoke-direct {v0, p1, v5, v6}, Lrx/internal/operators/i$c;-><init>(Ljava/lang/Object;J)V

    .line 1030
    invoke-virtual {p0, v0}, Lrx/internal/operators/i$a;->a(Lrx/internal/operators/i$c;)V

    .line 1031
    invoke-virtual {p0}, Lrx/internal/operators/i$a;->e()V

    return-void
.end method

.method public final a(Lrx/internal/operators/i$b;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/i$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1044
    monitor-enter p1

    .line 1045
    :try_start_0
    iget-boolean v0, p1, Lrx/internal/operators/i$b;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1046
    iput-boolean v1, p1, Lrx/internal/operators/i$b;->f:Z

    .line 1047
    monitor-exit p1

    return-void

    .line 1049
    :cond_0
    iput-boolean v1, p1, Lrx/internal/operators/i$b;->e:Z

    .line 1050
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1052
    :goto_0
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1056
    :cond_1
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/i$c;

    if-nez v0, :cond_2

    .line 1058
    invoke-virtual {p0}, Lrx/internal/operators/i$a;->b()Lrx/internal/operators/i$c;

    move-result-object v0

    .line 1059
    iput-object v0, p1, Lrx/internal/operators/i$b;->c:Ljava/lang/Object;

    .line 1065
    iget-wide v1, v0, Lrx/internal/operators/i$c;->b:J

    invoke-virtual {p1, v1, v2}, Lrx/internal/operators/i$b;->a(J)V

    .line 1068
    :cond_2
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 1072
    :cond_3
    iget-object v1, p1, Lrx/internal/operators/i$b;->b:Lrx/i;

    if-nez v1, :cond_4

    return-void

    .line 1077
    :cond_4
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_1
    cmp-long v8, v6, v2

    if-eqz v8, :cond_8

    .line 1081
    invoke-virtual {v0}, Lrx/internal/operators/i$c;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/internal/operators/i$c;

    if-eqz v8, :cond_8

    .line 1083
    iget-object v0, v8, Lrx/internal/operators/i$c;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lrx/internal/operators/i$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v9, 0x0

    .line 1085
    :try_start_1
    invoke-static {v1, v0}, Lrx/internal/operators/b;->a(Lrx/d;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1086
    iput-object v9, p1, Lrx/internal/operators/i$b;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_5
    const-wide/16 v9, 0x1

    add-long v11, v6, v9

    .line 1103
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    move-object v0, v8

    move-wide v6, v11

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1090
    iput-object v9, p1, Lrx/internal/operators/i$b;->c:Ljava/lang/Object;

    .line 1091
    invoke-static {v2}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 1092
    invoke-virtual {p1}, Lrx/internal/operators/i$b;->unsubscribe()V

    .line 1093
    invoke-static {v0}, Lrx/internal/operators/b;->c(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-static {v0}, Lrx/internal/operators/b;->b(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 1094
    invoke-static {v0}, Lrx/internal/operators/b;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lrx/i;->onError(Ljava/lang/Throwable;)V

    :cond_7
    return-void

    :cond_8
    cmp-long v1, v6, v4

    if-eqz v1, :cond_9

    .line 1109
    iput-object v0, p1, Lrx/internal/operators/i$b;->c:Ljava/lang/Object;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v4, v2, v0

    if-eqz v4, :cond_9

    .line 1111
    invoke-virtual {p1, v6, v7}, Lrx/internal/operators/i$b;->b(J)J

    .line 1115
    :cond_9
    monitor-enter p1

    .line 1116
    :try_start_2
    iget-boolean v0, p1, Lrx/internal/operators/i$b;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1117
    iput-boolean v1, p1, Lrx/internal/operators/i$b;->e:Z

    .line 1118
    monitor-exit p1

    return-void

    .line 1120
    :cond_a
    iput-boolean v1, p1, Lrx/internal/operators/i$b;->f:Z

    .line 1121
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

    .line 1050
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method final a(Lrx/internal/operators/i$c;)V
    .locals 1

    .line 972
    iget-object v0, p0, Lrx/internal/operators/i$a;->a:Lrx/internal/operators/i$c;

    invoke-virtual {v0, p1}, Lrx/internal/operators/i$c;->set(Ljava/lang/Object;)V

    .line 973
    iput-object p1, p0, Lrx/internal/operators/i$a;->a:Lrx/internal/operators/i$c;

    .line 974
    iget p1, p0, Lrx/internal/operators/i$a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lrx/internal/operators/i$a;->b:I

    return-void
.end method

.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method b()Lrx/internal/operators/i$c;
    .locals 1

    .line 1015
    invoke-virtual {p0}, Lrx/internal/operators/i$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/i$c;

    return-object v0
.end method

.method final b(Lrx/internal/operators/i$c;)V
    .locals 0

    .line 1005
    invoke-virtual {p0, p1}, Lrx/internal/operators/i$a;->set(Ljava/lang/Object;)V

    return-void
.end method

.method c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final c()V
    .locals 8

    .line 1036
    invoke-static {}, Lrx/internal/operators/b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/i$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1037
    new-instance v1, Lrx/internal/operators/i$c;

    iget-wide v2, p0, Lrx/internal/operators/i$a;->c:J

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    iput-wide v6, p0, Lrx/internal/operators/i$a;->c:J

    invoke-direct {v1, v0, v6, v7}, Lrx/internal/operators/i$c;-><init>(Ljava/lang/Object;J)V

    .line 1038
    invoke-virtual {p0, v1}, Lrx/internal/operators/i$a;->a(Lrx/internal/operators/i$c;)V

    .line 1039
    invoke-virtual {p0}, Lrx/internal/operators/i$a;->e()V

    return-void
.end method

.method d()V
    .locals 0

    return-void
.end method

.method e()V
    .locals 0

    return-void
.end method
