.class public Lorg/greenrobot/greendao/async/AsyncOperation;
.super Ljava/lang/Object;
.source "AsyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    }
.end annotation


# static fields
.field public static final FLAG_MERGE_TX:I = 0x1

.field public static final FLAG_STOP_QUEUE_ON_EXCEPTION:I = 0x2

.field public static final FLAG_TRACK_CREATOR_STACKTRACE:I = 0x4


# instance fields
.field private volatile completed:Z

.field final creatorStacktrace:Ljava/lang/Exception;

.field final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final database:Lorg/greenrobot/greendao/database/Database;

.field final flags:I

.field volatile mergedOperationsCount:I

.field final parameter:Ljava/lang/Object;

.field volatile result:Ljava/lang/Object;

.field sequenceNumber:I

.field volatile throwable:Ljava/lang/Throwable;

.field volatile timeCompleted:J

.field volatile timeStarted:J

.field final type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;


# direct methods
.method constructor <init>(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/database/Database;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "type"    # Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .param p3, "database"    # Lorg/greenrobot/greendao/database/Database;
    .param p4, "parameter"    # Ljava/lang/Object;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 70
    iput p5, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->flags:I

    .line 71
    iput-object p2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 72
    iput-object p3, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->database:Lorg/greenrobot/greendao/database/Database;

    .line 73
    iput-object p4, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    .line 74
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "AsyncOperation was created here"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->creatorStacktrace:Ljava/lang/Exception;

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCreatorStacktrace()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->creatorStacktrace:Ljava/lang/Exception;

    return-object v0
.end method

.method getDatabase()Lorg/greenrobot/greendao/database/Database;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->database:Lorg/greenrobot/greendao/database/Database;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->database:Lorg/greenrobot/greendao/database/Database;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "This operation did not yet complete"

    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    iget-wide v2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMergedOperationsCount()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->mergedOperationsCount:I

    return v0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->waitForCompletion()Ljava/lang/Object;

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncDaoException;

    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/async/AsyncDaoException;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->sequenceNumber:I

    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getTimeCompleted()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    return-wide v0
.end method

.method public getTimeStarted()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    return-wide v0
.end method

.method public getType()Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    return v0
.end method

.method public isCompletedSucessfully()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMergeTx()Z
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMergeableWith(Lorg/greenrobot/greendao/async/AsyncOperation;)Z
    .locals 2
    .param p1, "other"    # Lorg/greenrobot/greendao/async/AsyncOperation;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 213
    iput-wide v2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    .line 214
    iput-wide v2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    .line 215
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    .line 216
    iput-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 217
    iput-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 218
    iput v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->mergedOperationsCount:I

    .line 219
    return-void
.end method

.method declared-synchronized setCompleted()V
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 83
    return-void
.end method

.method public declared-synchronized waitForCompletion()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 158
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 160
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 165
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized waitForCompletion(I)Z
    .locals 4
    .param p1, "maxMillis"    # I

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 177
    int-to-long v2, p1

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
