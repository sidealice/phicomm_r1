.class final Lrx/subjects/ReplaySubject$2;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/ReplaySubject;->create(I)Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;


# direct methods
.method constructor <init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$2;->call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-void
.end method

.method public call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    monitor-enter p1

    .line 110
    :try_start_0
    iget-boolean v5, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v5, :cond_2

    .line 111
    :cond_0
    monitor-exit p1

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 114
    const/4 v5, 0x1

    iput-boolean v5, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 115
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    const/4 v4, 0x0

    .line 119
    .local v4, "skipFinal":Z
    :try_start_1
    iget-object v2, p0, Lrx/subjects/ReplaySubject$2;->val$state:Lrx/subjects/ReplaySubject$UnboundedReplayState;

    .line 121
    .local v2, "localState":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    :goto_1
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 122
    .local v0, "idx":I
    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->get()I

    move-result v3

    .line 123
    .local v3, "sidx":I
    if-eq v0, v3, :cond_3

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, p1}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->replayObserverFromIndex(Ljava/lang/Integer;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Integer;

    move-result-object v1

    .line 125
    .local v1, "j":Ljava/lang/Integer;
    invoke-virtual {p1, v1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 127
    .end local v1    # "j":Ljava/lang/Integer;
    :cond_3
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 128
    :try_start_2
    invoke-virtual {v2}, Lrx/subjects/ReplaySubject$UnboundedReplayState;->get()I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 129
    const/4 v5, 0x0

    iput-boolean v5, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 130
    const/4 v4, 0x1

    .line 131
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 136
    if-nez v4, :cond_1

    .line 137
    monitor-enter p1

    .line 138
    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 139
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 115
    .end local v0    # "idx":I
    .end local v2    # "localState":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .end local v3    # "sidx":I
    .end local v4    # "skipFinal":Z
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 133
    .restart local v0    # "idx":I
    .restart local v2    # "localState":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .restart local v3    # "sidx":I
    .restart local v4    # "skipFinal":Z
    :cond_4
    :try_start_5
    monitor-exit p1

    goto :goto_1

    :catchall_2
    move-exception v5

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 136
    .end local v0    # "idx":I
    .end local v2    # "localState":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    .end local v3    # "sidx":I
    :catchall_3
    move-exception v5

    if-nez v4, :cond_5

    .line 137
    monitor-enter p1

    .line 138
    const/4 v6, 0x0

    :try_start_7
    iput-boolean v6, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 139
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_5
    throw v5

    :catchall_4
    move-exception v5

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v5
.end method
