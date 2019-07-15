.class Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/internal/operators/OperatorReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lrx/internal/operators/OperatorReplay$Node;",
        ">;",
        "Lrx/internal/operators/OperatorReplay$ReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2090aef8efde5e9eL


# instance fields
.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field size:I

.field tail:Lrx/internal/operators/OperatorReplay$Node;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 881
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 882
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    iput-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    .line 883
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 884
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    iput-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 885
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 886
    return-void
.end method


# virtual methods
.method final addLast(Lrx/internal/operators/OperatorReplay$Node;)V
    .locals 1
    .param p1, "n"    # Lrx/internal/operators/OperatorReplay$Node;

    .prologue
    .line 893
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    invoke-virtual {v0, p1}, Lrx/internal/operators/OperatorReplay$Node;->set(Ljava/lang/Object;)V

    .line 894
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    .line 895
    iget v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 896
    return-void
.end method

.method final collect(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1056
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1058
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    :goto_0
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1059
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    if-eqz v1, :cond_0

    .line 1060
    iget-object v2, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    .line 1061
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1062
    .local v3, "v":Ljava/lang/Object;
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1071
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    return-void

    .line 1065
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1066
    move-object v0, v1

    .line 1070
    goto :goto_0
.end method

.method public final complete()V
    .locals 3

    .prologue
    .line 947
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 948
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 949
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 950
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 951
    return-void
.end method

.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1030
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final error(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 939
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 940
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 941
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 942
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncateFinal()V

    .line 943
    return-void
.end method

.method hasCompleted()Z
    .locals 2

    .prologue
    .line 1076
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasError()Z
    .locals 2

    .prologue
    .line 1073
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->tail:Lrx/internal/operators/OperatorReplay$Node;

    iget-object v1, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1039
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-object p1
.end method

.method public final next(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 931
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->enterTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 932
    .local v1, "o":Ljava/lang/Object;
    new-instance v0, Lrx/internal/operators/OperatorReplay$Node;

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorReplay$Node;-><init>(Ljava/lang/Object;)V

    .line 933
    .local v0, "n":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->addLast(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 934
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->truncate()V

    .line 935
    return-void
.end method

.method final removeFirst()V
    .locals 4

    .prologue
    .line 901
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 902
    .local v0, "head":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 903
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    if-nez v1, :cond_0

    .line 904
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Empty list!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 906
    :cond_0
    iget v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    .line 909
    invoke-virtual {p0, v1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 910
    return-void
.end method

.method final removeSome(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 912
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 913
    .local v0, "head":Lrx/internal/operators/OperatorReplay$Node;
    :goto_0
    if-lez p1, :cond_0

    .line 914
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "head":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 915
    .restart local v0    # "head":Lrx/internal/operators/OperatorReplay$Node;
    add-int/lit8 p1, p1, -0x1

    .line 916
    iget v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->size:I

    goto :goto_0

    .line 919
    :cond_0
    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 920
    return-void
.end method

.method public final replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 955
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    .local p1, "output":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    monitor-enter p1

    .line 956
    :try_start_0
    iget-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    if-eqz v10, :cond_1

    .line 957
    const/4 v10, 0x1

    iput-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 958
    monitor-exit p1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 960
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 961
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    :goto_1
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 967
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->get()J

    move-result-wide v6

    .line 968
    .local v6, "r":J
    move-wide v8, v6

    .line 969
    .local v8, "r0":J
    const-wide/16 v0, 0x0

    .line 971
    .local v0, "e":J
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->index()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/operators/OperatorReplay$Node;

    .line 972
    .local v3, "node":Lrx/internal/operators/OperatorReplay$Node;
    if-nez v3, :cond_2

    .line 973
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v3, Lrx/internal/operators/OperatorReplay$Node;

    .line 974
    .restart local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    iput-object v3, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 977
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_4

    .line 978
    invoke-virtual {v3}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/internal/operators/OperatorReplay$Node;

    .line 979
    .local v5, "v":Lrx/internal/operators/OperatorReplay$Node;
    if-eqz v5, :cond_4

    .line 980
    iget-object v10, v5, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 982
    .local v4, "o":Ljava/lang/Object;
    :try_start_1
    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    invoke-virtual {v10, v11, v4}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 983
    const/4 v10, 0x0

    iput-object v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 986
    :catch_0
    move-exception v2

    .line 987
    .local v2, "err":Ljava/lang/Throwable;
    const/4 v10, 0x0

    iput-object v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 988
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 989
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->unsubscribe()V

    .line 990
    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v4}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v10, v4}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 991
    iget-object v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->child:Lrx/Subscriber;

    iget-object v11, p0, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v11, v4}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v2, v11}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v10, v11}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 961
    .end local v0    # "e":J
    .end local v2    # "err":Ljava/lang/Throwable;
    .end local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "v":Lrx/internal/operators/OperatorReplay$Node;
    .end local v6    # "r":J
    .end local v8    # "r0":J
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 995
    .restart local v0    # "e":J
    .restart local v3    # "node":Lrx/internal/operators/OperatorReplay$Node;
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v5    # "v":Lrx/internal/operators/OperatorReplay$Node;
    .restart local v6    # "r":J
    .restart local v8    # "r0":J
    :cond_3
    const-wide/16 v10, 0x1

    add-long/2addr v0, v10

    .line 996
    move-object v3, v5

    .line 1000
    invoke-virtual {p1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->isUnsubscribed()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    .line 1005
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "v":Lrx/internal/operators/OperatorReplay$Node;
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_5

    .line 1006
    iput-object v3, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->index:Ljava/lang/Object;

    .line 1007
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v8, v10

    if-eqz v10, :cond_5

    .line 1008
    invoke-virtual {p1, v0, v1}, Lrx/internal/operators/OperatorReplay$InnerProducer;->produced(J)J

    .line 1012
    :cond_5
    monitor-enter p1

    .line 1013
    :try_start_3
    iget-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    if-nez v10, :cond_6

    .line 1014
    const/4 v10, 0x0

    iput-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->emitting:Z

    .line 1015
    monitor-exit p1

    goto/16 :goto_0

    .line 1018
    :catchall_1
    move-exception v10

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 1017
    :cond_6
    const/4 v10, 0x0

    :try_start_4
    iput-boolean v10, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->missed:Z

    .line 1018
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method

.method final setFirst(Lrx/internal/operators/OperatorReplay$Node;)V
    .locals 0
    .param p1, "n"    # Lrx/internal/operators/OperatorReplay$Node;

    .prologue
    .line 926
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;->set(Ljava/lang/Object;)V

    .line 927
    return-void
.end method

.method truncate()V
    .locals 0

    .prologue
    .line 1047
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method

.method truncateFinal()V
    .locals 0

    .prologue
    .line 1054
    .local p0, "this":Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;, "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer<TT;>;"
    return-void
.end method
