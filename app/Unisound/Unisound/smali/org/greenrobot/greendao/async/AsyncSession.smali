.class public Lorg/greenrobot/greendao/async/AsyncSession;
.super Ljava/lang/Object;
.source "AsyncSession.java"


# instance fields
.field private final daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

.field private final executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

.field private sessionFlags:I


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDaoSession;)V
    .locals 1
    .param p1, "daoSession"    # Lorg/greenrobot/greendao/AbstractDaoSession;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-direct {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    .line 31
    return-void
.end method

.method private enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 6
    .param p1, "type"    # Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    invoke-virtual {v1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object v2

    .line 320
    .local v2, "dao":Lorg/greenrobot/greendao/AbstractDao;, "Lorg/greenrobot/greendao/AbstractDao<**>;"
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation;

    const/4 v3, 0x0

    iget v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    or-int v5, p4, v1

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/async/AsyncOperation;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/database/Database;Ljava/lang/Object;I)V

    .line 321
    .local v0, "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->enqueue(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 322
    return-object v0
.end method

.method private enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 6
    .param p1, "type"    # Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .param p2, "param"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 308
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v3

    .line 309
    .local v3, "database":Lorg/greenrobot/greendao/database/Database;
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation;

    const/4 v2, 0x0

    iget v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    or-int v5, p3, v1

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/async/AsyncOperation;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/database/Database;Ljava/lang/Object;I)V

    .line 310
    .local v0, "operation":Lorg/greenrobot/greendao/async/AsyncOperation;
    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->enqueue(Lorg/greenrobot/greendao/async/AsyncOperation;)V

    .line 311
    return-object v0
.end method

.method private enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "type"    # Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .param p2, "entity"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .prologue
    .line 315
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public callInTx(Ljava/util/concurrent/Callable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->callInTx(Ljava/util/concurrent/Callable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public callInTx(Ljava/util/concurrent/Callable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionCallable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Class;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->count(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 2
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Count:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->delete(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 184
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Delete:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll(Ljava/lang/Class;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 2
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteByKey(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteByKey(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteByKey(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 194
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteByKey:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs deleteInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public deleteInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->DeleteInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs deleteInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->deleteInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Lorg/greenrobot/greendao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getListener()Lorg/greenrobot/greendao/async/AsyncOperationListener;

    move-result-object v0

    return-object v0
.end method

.method public getListenerMainThread()Lorg/greenrobot/greendao/async/AsyncOperationListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getListenerMainThread()Lorg/greenrobot/greendao/async/AsyncOperationListener;

    move-result-object v0

    return-object v0
.end method

.method public getMaxOperationCountToMerge()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getMaxOperationCountToMerge()I

    move-result v0

    return v0
.end method

.method public getSessionFlags()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    return v0
.end method

.method public getWaitForMergeMillis()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->getWaitForMergeMillis()I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insert(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 94
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Insert:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->insertInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplace(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insertOrReplace(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplace(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 124
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplace:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertOrReplaceInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->InsertOrReplaceInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs insertOrReplaceInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->insertOrReplaceInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->load(Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Load:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Class;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->loadAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Class;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 2
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->LoadAll:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryList(Lorg/greenrobot/greendao/query/Query;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query",
            "<*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "query":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->queryList(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryList(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query",
            "<*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "query":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryList:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryUnique(Lorg/greenrobot/greendao/query/Query;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query",
            "<*>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "query":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<*>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->queryUnique(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public queryUnique(Lorg/greenrobot/greendao/query/Query;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/Query",
            "<*>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "query":Lorg/greenrobot/greendao/query/Query;, "Lorg/greenrobot/greendao/query/Query<*>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->QueryUnique:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->refresh(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 304
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Refresh:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public runInTx(Ljava/lang/Runnable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->runInTx(Ljava/lang/Runnable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public runInTx(Ljava/lang/Runnable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "flags"    # I

    .prologue
    .line 234
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->TransactionRunnable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueDatabaseOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public setListener(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setListener(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V

    .line 55
    return-void
.end method

.method public setListenerMainThread(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V
    .locals 1
    .param p1, "listenerMainThread"    # Lorg/greenrobot/greendao/async/AsyncOperationListener;

    .prologue
    .line 62
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setListenerMainThread(Lorg/greenrobot/greendao/async/AsyncOperationListener;)V

    .line 63
    return-void
.end method

.method public setMaxOperationCountToMerge(I)V
    .locals 1
    .param p1, "maxOperationCountToMerge"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setMaxOperationCountToMerge(I)V

    .line 39
    return-void
.end method

.method public setSessionFlags(I)V
    .locals 0
    .param p1, "sessionFlags"    # I

    .prologue
    .line 332
    iput p1, p0, Lorg/greenrobot/greendao/async/AsyncSession;->sessionFlags:I

    .line 333
    return-void
.end method

.method public setWaitForMergeMillis(I)V
    .locals 1
    .param p1, "waitForMergeMillis"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->setWaitForMergeMillis(I)V

    .line 47
    return-void
.end method

.method public update(Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->update(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 154
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->Update:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs updateInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;I[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p3, "entities":[Ljava/lang/Object;, "[TE;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxArray:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p3, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/greenrobot/greendao/async/AsyncSession;->updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public updateInTx(Ljava/lang/Class;Ljava/lang/Iterable;I)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Iterable",
            "<TE;>;I)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->UpdateInTxIterable:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/async/AsyncSession;->enqueEntityOperation(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Ljava/lang/Class;Ljava/lang/Object;I)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public varargs updateInTx(Ljava/lang/Class;[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[TE;)",
            "Lorg/greenrobot/greendao/async/AsyncOperation;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "entityClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "entities":[Ljava/lang/Object;, "[TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/greenrobot/greendao/async/AsyncSession;->updateInTx(Ljava/lang/Class;I[Ljava/lang/Object;)Lorg/greenrobot/greendao/async/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public waitForCompletion()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForCompletion()V

    .line 75
    return-void
.end method

.method public waitForCompletion(I)Z
    .locals 1
    .param p1, "maxMillis"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncSession;->executor:Lorg/greenrobot/greendao/async/AsyncOperationExecutor;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/async/AsyncOperationExecutor;->waitForCompletion(I)Z

    move-result v0

    return v0
.end method
