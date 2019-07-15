.class Lorg/greenrobot/greendao/async/AsyncOperationExecutor;
.super Ljava/lang/Object;
.source "AsyncOperationExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private countOperationsCompleted:I

.field private countOperationsEnqueued:I

.field private volatile executorRunning:Z

.field private handlerMainThread:Landroid/os/Handler;

.field private lastSequenceNumber:I

.field private volatile listener:Lorg/greenrobot/greendao/async/AsyncOperationListener;

.field private volatile listenerMainThread:Lorg/greenrobot/greendao/async/AsyncOperationListener;

.field private volatile maxOperationCountToMerge:I

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lorg/greenrobot/greendao/async/AsyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private volatile waitForMergeMillis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 53
    iput v1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    .line 54
    iput v1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    .line 55
    return-void
.end method

.method private executeOperation(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .locals 4
    .param p1, "operation"    # Lorg/greenrobot/greendao/async/AsyncOperation;

    .prologue
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    .line 267
    :try_start_0
    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperationExecutor$1;->$SwitchMap$org$greenrobot$greendao$async$AsyncOperation$OperationType:[I

    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-virtual {v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 335
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "th":Ljava/lang/Throwable;
    iput-object v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 340
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    .line 342
    return-void

    .line 269
    :pswitch_0
    :try_start_1
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :pswitch_1
    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 278
    :pswitch_3
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    goto :goto_0

    .line 281
    :pswitch_4
    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 284
    :pswitch_5
    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :pswitch_6
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    .line 290
    :pswitch_7
    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 293
    :pswitch_8
    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 296
    :pswitch_9
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :pswitch_a
    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 302
    :pswitch_b
    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx([Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    :pswitch_c
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeTransactionRunnable(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    goto/16 :goto_0

    .line 308
    :pswitch_d
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeTransactionCallable(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    goto/16 :goto_0

    .line 311
    :pswitch_e
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Lorg/greenrobot/greendao/query/Query;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->forCurrentThread()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 314
    :pswitch_f
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Lorg/greenrobot/greendao/query/Query;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->forCurrentThread()Lorg/greenrobot/greendao/query/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 317
    :pswitch_10
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 320
    :pswitch_11
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    goto/16 :goto_0

    .line 323
    :pswitch_12
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 326
    :pswitch_13
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 329
    :pswitch_14
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 332
    :pswitch_15
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v2, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->refresh(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private executeOperationAndPostCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .locals 0
    .param p1, "operation"    # Lorg/greenrobot/greendao/async/AsyncOperation;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperation(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 260
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handleOperationCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 261
    return-void
.end method

.method private executeTransactionCallable(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .locals 2
    .param p1, "operation"    # Lorg/greenrobot/greendao/async/AsyncOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    .line 358
    .local v0, "db":Lorg/greenrobot/greendao/database/Database;
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 360
    :try_start_0
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 361
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 365
    return-void

    .line 363
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v1
.end method

.method private executeTransactionRunnable(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .locals 2
    .param p1, "operation"    # Lorg/greenrobot/greendao/async/AsyncOperation;

    .prologue
    .line 345
    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    .line 346
    .local v0, "db":Lorg/greenrobot/greendao/database/Database;
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 348
    :try_start_0
    iget-object v1, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 349
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 353
    return-void

    .line 351
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    throw v1
.end method

.method private handleOperationCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .locals 4
    .param p1, "operation"    # Lorg/greenrobot/greendao/async/AsyncOperation;

    .prologue
    .line 237
    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->setCompleted()V

    .line 239
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listener:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 240
    .local v0, "listenerToCall":Lorg/greenrobot/greendao/async/AsyncOperationListener;
    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationListener;->onAsyncOperationCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 243
    :cond_0
    iget-object v2, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listenerMainThread:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    if-nez v2, :cond_1

    .line 245
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    .line 247
    :cond_1
    iget-object v2, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 248
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handlerMainThread:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    monitor-enter p0

    .line 251
    :try_start_0
    iget v2, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    .line 252
    iget v2, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsCompleted:I

    iget v3, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    if-ne v2, v3, :cond_3

    .line 253
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 255
    :cond_3
    monitor-exit p0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private mergeTxAndExecute(Lorg/greenrobot/greendao/async/AsyncOperation;Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .locals 13
    .param p1, "operation1"    # Lorg/greenrobot/greendao/async/AsyncOperation;
    .param p2, "operation2"    # Lorg/greenrobot/greendao/async/AsyncOperation;

    .prologue
    .line 180
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v5, "mergedOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/greenrobot/greendao/async/AsyncOperation;>;"
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    .line 185
    .local v1, "db":Lorg/greenrobot/greendao/database/Database;
    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 186
    const/4 v9, 0x0

    .line 188
    .local v9, "success":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 189
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 190
    .local v6, "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    invoke-direct {p0, v6}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperation(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 191
    invoke-virtual {v6}, Lorg/greenrobot/greendao/async/AsyncOperation;->isFailed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 214
    .end local v6    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    :goto_2
    if-eqz v9, :cond_5

    .line 221
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 222
    .local v4, "mergedCount":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 223
    .local v0, "asyncOperation":Lorg/greenrobot/greendao/async/AsyncOperation;
    iput v4, v0, Lorg/greenrobot/greendao/async/AsyncOperation;->mergedOperationsCount:I

    .line 224
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->handleOperationCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    goto :goto_3

    .line 195
    .end local v0    # "asyncOperation":Lorg/greenrobot/greendao/async/AsyncOperation;
    .end local v4    # "mergedCount":I
    .restart local v6    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v3, v10, :cond_3

    .line 196
    iget-object v10, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 197
    .local v7, "peekedOp":Lorg/greenrobot/greendao/async/AsyncOperation;
    iget v10, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    if-ge v3, v10, :cond_4

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeableWith(Lorg/greenrobot/greendao/async/AsyncOperation;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 198
    iget-object v10, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v10}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 199
    .local v8, "removedOp":Lorg/greenrobot/greendao/async/AsyncOperation;
    if-eq v8, v7, :cond_2

    .line 201
    new-instance v10, Lorg/greenrobot/greendao/DaoException;

    const-string v11, "Internal error: peeked op did not match removed op"

    invoke-direct {v10, v11}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    .end local v6    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    .end local v7    # "peekedOp":Lorg/greenrobot/greendao/async/AsyncOperation;
    .end local v8    # "removedOp":Lorg/greenrobot/greendao/async/AsyncOperation;
    :catchall_0
    move-exception v10

    .line 214
    :try_start_3
    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 218
    :goto_4
    throw v10

    .line 203
    .restart local v6    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    .restart local v7    # "peekedOp":Lorg/greenrobot/greendao/async/AsyncOperation;
    .restart local v8    # "removedOp":Lorg/greenrobot/greendao/async/AsyncOperation;
    :cond_2
    :try_start_4
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v7    # "peekedOp":Lorg/greenrobot/greendao/async/AsyncOperation;
    .end local v8    # "removedOp":Lorg/greenrobot/greendao/async/AsyncOperation;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    .restart local v7    # "peekedOp":Lorg/greenrobot/greendao/async/AsyncOperation;
    :cond_4
    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    const/4 v9, 0x1

    .line 208
    goto :goto_1

    .line 215
    .end local v6    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    .end local v7    # "peekedOp":Lorg/greenrobot/greendao/async/AsyncOperation;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Async transaction could not be ended, success so far was: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lorg/greenrobot/greendao/DaoLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    const/4 v9, 0x0

    .line 219
    goto :goto_2

    .line 215
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 216
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Async transaction could not be ended, success so far was: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lorg/greenrobot/greendao/DaoLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    const/4 v9, 0x0

    goto :goto_4

    .line 227
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_5
    const-string v10, "Reverted merged transaction because one of the operations failed. Executing operations one by one instead..."

    invoke-static {v10}, Lorg/greenrobot/greendao/DaoLog;->i(Ljava/lang/String;)I

    .line 229
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 230
    .restart local v0    # "asyncOperation":Lorg/greenrobot/greendao/async/AsyncOperation;
    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperation;->reset()V

    .line 231
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    goto :goto_5

    .line 234
    .end local v0    # "asyncOperation":Lorg/greenrobot/greendao/async/AsyncOperation;
    :cond_6
    return-void
.end method


# virtual methods
.method public enqueue(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    .locals 1
    .param p1, "operation"    # Lorg/greenrobot/greendao/async/AsyncOperation;

    .prologue
    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->lastSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->lastSequenceNumber:I

    iput v0, p1, Lorg/greenrobot/greendao/async/AsyncOperation;->sequenceNumber:I

    .line 60
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 61
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    .line 62
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 64
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 66
    :cond_0
    monitor-exit p0

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getListener()Lorg/greenrobot/greendao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listener:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    return-object v0
.end method

.method public getListenerMainThread()Lorg/greenrobot/greendao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listenerMainThread:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    return-object v0
.end method

.method public getMaxOperationCountToMerge()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    return v0
.end method

.method public getWaitForMergeMillis()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 369
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listenerMainThread:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 370
    .local v0, "listenerToCall":Lorg/greenrobot/greendao/async/AsyncOperationListener;
    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/greenrobot/greendao/async/AsyncOperation;

    invoke-interface {v0, v1}, Lorg/greenrobot/greendao/async/AsyncOperationListener;->onAsyncOperationCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 373
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public declared-synchronized isCompleted()Z
    .locals 2

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsEnqueued:I

    iget v1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->countOperationsCompleted:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 141
    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 142
    .local v3, "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    if-nez v3, :cond_1

    .line 143
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :try_start_1
    iget-object v5, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/greenrobot/greendao/async/AsyncOperation;

    move-object v3, v0

    .line 146
    if-nez v3, :cond_0

    .line 148
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 149
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    iput-boolean v9, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    .line 175
    .end local v3    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    :goto_1
    return-void

    .line 151
    .restart local v3    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    iget-object v5, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->queue:Ljava/util/concurrent/BlockingQueue;

    iget v6, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/greenrobot/greendao/async/AsyncOperation;

    .line 156
    .local v4, "operation2":Lorg/greenrobot/greendao/async/AsyncOperation;
    if-eqz v4, :cond_3

    .line 157
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeableWith(Lorg/greenrobot/greendao/async/AsyncOperation;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    invoke-direct {p0, v3, v4}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->mergeTxAndExecute(Lorg/greenrobot/greendao/async/AsyncOperation;Lorg/greenrobot/greendao/async/AsyncOperation;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 169
    .end local v3    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    .end local v4    # "operation2":Lorg/greenrobot/greendao/async/AsyncOperation;
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was interruppted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/greenrobot/greendao/DaoLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    iput-boolean v9, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    goto :goto_1

    .line 151
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 173
    .end local v3    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    :catchall_1
    move-exception v5

    iput-boolean v9, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executorRunning:Z

    throw v5

    .line 161
    .restart local v3    # "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    .restart local v4    # "operation2":Lorg/greenrobot/greendao/async/AsyncOperation;
    :cond_2
    :try_start_7
    invoke-direct {p0, v3}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 162
    invoke-direct {p0, v4}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    goto :goto_0

    .line 167
    .end local v4    # "operation2":Lorg/greenrobot/greendao/async/AsyncOperation;
    :cond_3
    invoke-direct {p0, v3}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->executeOperationAndPostCompleted(Lorg/greenrobot/greendao/async/AsyncOperation;)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public setListener(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listener:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 91
    return-void
.end method

.method public setListenerMainThread(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V
    .locals 0
    .param p1, "listenerMainThread"    # Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->listenerMainThread:Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .line 99
    return-void
.end method

.method public setMaxOperationCountToMerge(I)V
    .locals 0
    .param p1, "maxOperationCountToMerge"    # I

    .prologue
    .line 74
    iput p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->maxOperationCountToMerge:I

    .line 75
    return-void
.end method

.method public setWaitForMergeMillis(I)V
    .locals 0
    .param p1, "waitForMergeMillis"    # I

    .prologue
    .line 82
    iput p1, p0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForMergeMillis:I

    .line 83
    return-void
.end method

.method public declared-synchronized waitForCompletion()V
    .locals 3

    .prologue
    .line 110
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->isCompleted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 112
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Interrupted while waiting for all operations to complete"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 117
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized waitForCompletion(I)Z
    .locals 4
    .param p1, "maxMillis"    # I

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->isCompleted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 128
    int-to-long v2, p1

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->isCompleted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Interrupted while waiting for all operations to complete"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
